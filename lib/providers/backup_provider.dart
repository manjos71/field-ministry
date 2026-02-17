import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  BackupNotifier(this._backupService, this._dbService, this._ref)
      : super(BackupState()) {
    _checkSignIn();
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
      final data = _dbService.exportAllData();
      final jsonString = jsonEncode(data);
      
      await _backupService.uploadBackup(jsonString, _backupFileName);
      
      state = state.copyWith(
        isLoading: false, 
        successMessage: 'Backup realizado com sucesso!',
        lastBackupDate: DateTime.now()
      );
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
        state = state.copyWith(isLoading: false, error: 'Backup não encontrado');
        return;
      }
      
      final data = jsonDecode(jsonString) as Map<String, dynamic>;
      await _dbService.importAllData(data);
      
      // Refresh territories
      _ref.refresh(territoriesProvider);
      
      state = state.copyWith(
        isLoading: false, 
        successMessage: 'Dados restaurados com sucesso!'
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Falha ao restaurar: $e');
    }
  }
}

final backupProvider = StateNotifierProvider<BackupNotifier, BackupState>((ref) {
  final backupService = ref.watch(backupServiceProvider);
  final dbService = ref.watch(databaseServiceProvider).valueOrNull!; // Assuming db is initialized
  return BackupNotifier(backupService, dbService, ref);
});

