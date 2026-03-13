import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import '../services/backup_service.dart';
import '../services/google_drive_service.dart';
import '../services/onedrive_service.dart';
import '../services/dropbox_service.dart';
import '../services/database_service.dart';
import 'territory_provider.dart';

// Provider to store the selected backup service type
final selectedBackupServiceProvider = StateProvider<String>((ref) {
  return 'onedrive'; // Default to OneDrive
});

// Provider for the active backup service
final backupServiceProvider = Provider<BackupService>((ref) {
  final serviceType = ref.watch(selectedBackupServiceProvider);

  switch (serviceType) {
    case 'google_drive':
      return GoogleDriveService();
    case 'dropbox':
      return DropboxService();
    case 'onedrive':
    default:
      return OneDriveService();
  }
});

class BackupState {
  final bool isLoading;
  final String? error;
  final String? successMessage;
  final DateTime? lastBackupDate;
  final BackupUser? currentUser;

  BackupState({
    this.isLoading = false,
    this.error,
    this.successMessage,
    this.lastBackupDate,
    this.currentUser,
  });

  BackupState copyWith({
    bool? isLoading,
    String? error,
    String? successMessage,
    DateTime? lastBackupDate,
    BackupUser? currentUser,
  }) {
    return BackupState(
      isLoading: isLoading ?? this.isLoading,
      error: error, // Clear error if not provided
      successMessage: successMessage, // Clear message if not provided
      lastBackupDate: lastBackupDate ?? this.lastBackupDate,
      currentUser: currentUser ?? this.currentUser,
    );
  }
}

class BackupNotifier extends StateNotifier<BackupState> {
  final BackupService _backupService;
  final DatabaseService _dbService;
  final Ref _ref;
  static const String _backupFileName = 'field_ministry_backup.json';
  static const String _embeddedImagesKey = 'embedded_images';
  static const String _restoredImagesDir = 'backup_restored_images';

  BackupNotifier(this._backupService, this._dbService, this._ref)
      : super(BackupState()) {
    _initializeAndCheckSignIn();
  }

  Future<void> _initializeAndCheckSignIn() async {
    // Initialize the backup service (loads saved credentials)
    await _backupService.initialize();
    await _checkSignIn();
  }

  Future<void> _checkSignIn() async {
    final user = _backupService.currentUser;
    if (user != null) {
      state = state.copyWith(currentUser: user);
      await _checkLastBackup();
    }
  }

  Future<void> _checkLastBackup() async {
    final date = await _backupService.getLastBackupTime(_backupFileName);
    if (date != null) {
      state = state.copyWith(lastBackupDate: date);
    }
  }

  Future<void> signIn() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await _backupService.signIn();
      if (user != null) {
        state = state.copyWith(currentUser: user, isLoading: false);
        await _checkLastBackup();
      } else {
        state = state.copyWith(isLoading: false, error: 'Login cancelado');
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> signOut() async {
    await _backupService.signOut();
    state = BackupState(); // Reset state
  }

  Future<void> backup() async {
    if (state.currentUser == null) await signIn();
    if (state.currentUser == null) return;

    state = state.copyWith(isLoading: true, error: null, successMessage: null);
    try {
      final data = Map<String, dynamic>.from(_dbService.exportAllData());
      final embeddedImages = await _collectImagePayload(data);
      if (embeddedImages.isNotEmpty) {
        data[_embeddedImagesKey] = embeddedImages;
      }

      final jsonString = jsonEncode(data);

      await _backupService.uploadBackup(jsonString, _backupFileName);

      state = state.copyWith(
          isLoading: false,
          successMessage: 'Backup realizado com sucesso!',
          lastBackupDate: DateTime.now());
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Falha no backup: $e');
    }
  }

  Future<void> restore() async {
    if (state.currentUser == null) await signIn();
    if (state.currentUser == null) return;

    state = state.copyWith(isLoading: true, error: null, successMessage: null);
    try {
      final jsonString = await _backupService.downloadBackup(_backupFileName);

      if (jsonString == null) {
        state =
            state.copyWith(isLoading: false, error: 'Backup não encontrado');
        return;
      }

      final data = Map<String, dynamic>.from(
          jsonDecode(jsonString) as Map<String, dynamic>);
      await _restoreEmbeddedImages(data);
      await _dbService.importAllData(data);

      // Refresh territories
      _ref.invalidate(territoriesProvider);

      state = state.copyWith(
          isLoading: false, successMessage: 'Dados restaurados com sucesso!');
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Falha ao restaurar: $e');
    }
  }

  Future<Map<String, String>> _collectImagePayload(
      Map<String, dynamic> data) async {
    if (kIsWeb) return {};

    final imagePaths = <String>{};

    final settings = data['settings'];
    if (settings is Map) {
      final profileImagePath = settings['user_image_path'];
      if (profileImagePath is String && profileImagePath.trim().isNotEmpty) {
        imagePaths.add(profileImagePath);
      }
    }

    final territories = data['territories'];
    if (territories is List) {
      for (final item in territories) {
        if (item is Map) {
          final territoryImagePath = item['imagePath'];
          if (territoryImagePath is String &&
              territoryImagePath.trim().isNotEmpty) {
            imagePaths.add(territoryImagePath);
          }
        }
      }
    }

    final imagesByPath = <String, String>{};
    for (final path in imagePaths) {
      try {
        final file = File(path);
        if (!await file.exists()) continue;
        final bytes = await file.readAsBytes();
        if (bytes.isEmpty) continue;
        imagesByPath[path] = base64Encode(bytes);
      } catch (_) {
        // Ignore unreadable files to avoid blocking backup.
      }
    }

    return imagesByPath;
  }

  Future<void> _restoreEmbeddedImages(Map<String, dynamic> data) async {
    if (kIsWeb) return;

    final rawEmbedded = data[_embeddedImagesKey];
    if (rawEmbedded is! Map) return;

    final directory = await getApplicationDocumentsDirectory();
    final restoredDir = Directory('${directory.path}/$_restoredImagesDir');
    if (!await restoredDir.exists()) {
      await restoredDir.create(recursive: true);
    }

    final restoredPathByOriginal = <String, String>{};
    var index = 0;

    for (final entry in rawEmbedded.entries) {
      final originalPath = entry.key;
      final base64Data = entry.value;
      if (originalPath is! String || base64Data is! String) continue;

      try {
        final bytes = base64Decode(base64Data);
        if (bytes.isEmpty) continue;

        final extension = _extractExtension(originalPath);
        final fileName =
            'img_${DateTime.now().millisecondsSinceEpoch}_${index++}$extension';
        final file = File('${restoredDir.path}/$fileName');
        await file.writeAsBytes(bytes, flush: true);
        restoredPathByOriginal[originalPath] = file.path;
      } catch (_) {
        // Skip malformed image payloads without aborting restore.
      }
    }

    if (restoredPathByOriginal.isEmpty) return;

    final settings = data['settings'];
    if (settings is Map) {
      final profileImagePath = settings['user_image_path'];
      if (profileImagePath is String &&
          restoredPathByOriginal.containsKey(profileImagePath)) {
        settings['user_image_path'] = restoredPathByOriginal[profileImagePath];
      }
    }

    final territories = data['territories'];
    if (territories is List) {
      for (final item in territories) {
        if (item is Map) {
          final territoryImagePath = item['imagePath'];
          if (territoryImagePath is String &&
              restoredPathByOriginal.containsKey(territoryImagePath)) {
            item['imagePath'] = restoredPathByOriginal[territoryImagePath];
          }
        }
      }
    }
  }

  String _extractExtension(String path) {
    final separatorIndex = path.lastIndexOf('/');
    final fileName =
        separatorIndex >= 0 ? path.substring(separatorIndex + 1) : path;
    final dotIndex = fileName.lastIndexOf('.');
    if (dotIndex <= 0 || dotIndex == fileName.length - 1) {
      return '.jpg';
    }

    final extension = fileName.substring(dotIndex);
    if (extension.length > 6) {
      return '.jpg';
    }
    return extension;
  }
}

final backupProvider =
    StateNotifierProvider<BackupNotifier, BackupState>((ref) {
  final backupService = ref.watch(backupServiceProvider);
  final dbService = ref
      .watch(databaseServiceProvider)
      .valueOrNull!; // Assuming db is initialized
  return BackupNotifier(backupService, dbService, ref);
});
