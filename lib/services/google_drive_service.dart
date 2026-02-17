import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'backup_service.dart';

class GoogleAuthClient extends http.BaseClient {
  final Map<String, String> _headers;
  final http.Client _client = http.Client();

  GoogleAuthClient(this._headers);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers.addAll(_headers);
    return _client.send(request);
  }
}

class GoogleDriveService implements BackupService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      drive.DriveApi.driveAppdataScope,
      drive.DriveApi.driveFileScope,
    ],
  );

  GoogleSignInAccount? _googleUser;
  BackupUser? _currentUser;
  drive.DriveApi? _driveApi;

  @override
  Future<void> initialize() async {
    // Try to silently sign in with cached credentials
    try {
      _googleUser = await _googleSignIn.signInSilently();
      if (_googleUser != null) {
        final authHeaders = await _googleUser!.authHeaders;
        final authenticateClient = GoogleAuthClient(authHeaders);
        _driveApi = drive.DriveApi(authenticateClient);
        _currentUser = BackupUser(
          id: _googleUser!.id,
          email: _googleUser!.email,
          displayName: _googleUser!.displayName,
          photoUrl: _googleUser!.photoUrl,
        );
        debugPrint('Google Drive: restored session for ${_currentUser!.email}');
      }
    } catch (e) {
      debugPrint('Google Drive silent sign-in failed: $e');
    }
  }

  @override
  Future<BackupUser?> signIn() async {
    try {
      _googleUser = await _googleSignIn.signIn();
      if (_googleUser != null) {
        final authHeaders = await _googleUser!.authHeaders;
        final authenticateClient = GoogleAuthClient(authHeaders);
        _driveApi = drive.DriveApi(authenticateClient);
        _currentUser = BackupUser(
          id: _googleUser!.id,
          email: _googleUser!.email,
          displayName: _googleUser!.displayName,
          photoUrl: _googleUser!.photoUrl,
        );
      }
      return _currentUser;
    } catch (e) {
      debugPrint('Error signing in: $e');
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.disconnect();
    _googleUser = null;
    _currentUser = null;
    _driveApi = null;
  }

  Future<void> uploadBackup(String jsonData, String fileName) async {
    if (_driveApi == null) await signIn();
    if (_driveApi == null) throw Exception('Not signed in');

    try {
      // Create a temporary file to upload
      final directory = await getTemporaryDirectory();
      final localFile = File('${directory.path}/$fileName');
      await localFile.writeAsString(jsonData);

      final media = drive.Media(localFile.openRead(), localFile.lengthSync());
      
      // Check if file exists to update or create new
      final fileList = await _driveApi!.files.list(
        q: "name = '$fileName' and trashed = false",
        spaces: 'appDataFolder',
      );

      if (fileList.files != null && fileList.files!.isNotEmpty) {
        // Update existing file
        final fileId = fileList.files!.first.id!;
        final driveFile = drive.File(); // Empty metadata implies no change to name/parents
        await _driveApi!.files.update(driveFile, fileId, uploadMedia: media);
        debugPrint('Backup updated: $fileId');
      } else {
        // Create new file
        final driveFile = drive.File()
          ..name = fileName
          ..parents = ['appDataFolder'];

        await _driveApi!.files.create(driveFile, uploadMedia: media);
        debugPrint('Backup created');
      }
    } catch (e) {
      debugPrint('Error uploading backup: $e');
      rethrow;
    }
  }

  Future<String?> downloadBackup(String fileName) async {
    if (_driveApi == null) await signIn();
    if (_driveApi == null) throw Exception('Not signed in');

    try {
      final fileList = await _driveApi!.files.list(
        q: "name = '$fileName' and trashed = false",
        spaces: 'appDataFolder',
      );

      if (fileList.files == null || fileList.files!.isEmpty) {
        return null; // Backup not found
      }

      final fileId = fileList.files!.first.id!;
      final media = await _driveApi!.files.get(
        fileId,
        downloadOptions: drive.DownloadOptions.fullMedia,
      ) as drive.Media;

      final List<int> dataStore = [];
      await media.stream.forEach((data) {
        dataStore.addAll(data);
      });

      return utf8.decode(dataStore);
    } catch (e) {
      debugPrint('Error downloading backup: $e');
      rethrow;
    }
  }
  
  Future<DateTime?> getLastBackupTime(String fileName) async {
    if (_driveApi == null) await signIn();
    if (_driveApi == null) return null;

    try {
      final fileList = await _driveApi!.files.list(
        q: "name = '$fileName' and trashed = false",
        spaces: 'appDataFolder',
        $fields: 'files(id, modifiedTime)',
      );

      if (fileList.files != null && fileList.files!.isNotEmpty) {
        return fileList.files!.first.modifiedTime;
      }
      return null;
    } catch (e) {
      debugPrint('Error getting backup info: $e');
      return null;
    }
  }
  
  @override
  BackupUser? get currentUser => _currentUser;
}
