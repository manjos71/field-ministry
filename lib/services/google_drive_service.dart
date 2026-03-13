import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:http/http.dart' as http;
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
    // ATENÇÃO: Aqui DEVE ser o ID do cliente WEB, não o do Android. 
    // Estou usando o ID Web que você enviou na mensagem anterior.
    serverClientId: '618817240736-4a3m7k0hqkqlvjt1otg8pvqbivf76e5g.apps.googleusercontent.com',
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
    // Tenta fazer o login silencioso com credenciais em cache
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
        debugPrint('Google Drive: Sessão restaurada para ${_currentUser!.email}');
      }
    } catch (e) {
      debugPrint('Google Drive login silencioso falhou: $e');
    }
  }

  @override
  Future<BackupUser?> signIn() async {
    try {
      _googleUser = await _googleSignIn.signIn();
      if (_googleUser == null) {
        debugPrint('Google Sign-In: Login cancelado pelo usuário ou falhou.');
        return null;
      }
      final authHeaders = await _googleUser!.authHeaders;
      final authenticateClient = GoogleAuthClient(authHeaders);
      _driveApi = drive.DriveApi(authenticateClient);
      _currentUser = BackupUser(
        id: _googleUser!.id,
        email: _googleUser!.email,
        displayName: _googleUser!.displayName,
        photoUrl: _googleUser!.photoUrl,
      );
      return _currentUser;
    } on PlatformException catch (e) {
      final raw = '${e.code} ${e.message ?? ''}';
      if (raw.contains('ApiException: 10') || raw.contains('sign_in_failed')) {
        throw Exception(
          'Falha na configuração do Google Sign-In (ApiException: 10). '
          'Confirme package name e SHA-1/SHA-256 no cliente OAuth Android do Google Cloud.',
        );
      }
      throw Exception('Falha no login Google: ${e.message ?? e.code}');
    } catch (e) {
      debugPrint('Erro ao fazer login: $e');
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.disconnect();
    _googleUser = null;
    _currentUser = null;
    _driveApi = null;
  }

  @override
  Future<void> uploadBackup(String jsonData, String fileName) async {
    if (_driveApi == null) await signIn();
    if (_driveApi == null) throw Exception('Drive API não inicializada. Faça login.');

    try {
      final bytes = utf8.encode(jsonData);
      final media = drive.Media(Stream.value(bytes), bytes.length);
      
      final fileList = await _driveApi!.files.list(
        q: "name = '$fileName' and trashed = false",
        spaces: 'appDataFolder',
      );

      if (fileList.files?.isNotEmpty ?? false) {
        // Atualiza arquivo existente
        final fileId = fileList.files!.first.id!;
        await _driveApi!.files.update(drive.File(), fileId, uploadMedia: media);
        debugPrint('Backup atualizado no Drive: $fileId');
      } else {
        // Cria novo arquivo
        final driveFile = drive.File()
          ..name = fileName
          ..parents = ['appDataFolder'];
        await _driveApi!.files.create(driveFile, uploadMedia: media);
        debugPrint('Novo backup criado no Drive.');
      }
    } catch (e) {
      debugPrint('Falha no upload do backup: $e');
      rethrow;
    }
  }

  @override
  Future<String?> downloadBackup(String fileName) async {
    if (_driveApi == null) await signIn();
    if (_driveApi == null) throw Exception('Drive API não inicializada. Faça login.');

    try {
      final fileList = await _driveApi!.files.list(
        q: "name = '$fileName' and trashed = false",
        spaces: 'appDataFolder',
      );

      if (fileList.files == null || fileList.files!.isEmpty) {
        return null; // Arquivo de backup não encontrado
      }

      final fileId = fileList.files!.first.id!;
      final media = await _driveApi!.files.get(
        fileId,
        downloadOptions: drive.DownloadOptions.fullMedia,
      ) as drive.Media;

      // Otimização de memória usando StringBuffer
      final completer = Completer<String>();
      final contents = StringBuffer();

      media.stream.transform(utf8.decoder).listen(
        (data) => contents.write(data),
        onDone: () => completer.complete(contents.toString()),
        onError: (e) => completer.completeError(e),
      );

      return await completer.future;
    } catch (e) {
      debugPrint('Erro ao fazer download do backup: $e');
      rethrow;
    }
  }
  
  @override
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
      debugPrint('Erro ao obter informações do backup: $e');
      return null;
    }
  }
  
  @override
  BackupUser? get currentUser => _currentUser;
}