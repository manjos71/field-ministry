class BackupUser {
  final String id;
  final String email;
  final String? displayName;
  final String? photoUrl;

  const BackupUser({
    required this.id,
    required this.email,
    this.displayName,
    this.photoUrl,
  });
}

/// Abstract interface for backup services
/// Provides a common contract for different cloud storage providers
abstract class BackupService {
  /// Sign in to the backup service
  Future<BackupUser?> signIn();
  
  /// Sign out from the backup service
  Future<void> signOut();
  
  /// Upload backup file to cloud storage
  Future<void> uploadBackup(String jsonData, String fileName);
  
  /// Download backup file from cloud storage
  Future<String?> downloadBackup(String fileName);
  
  /// Get the last modification time of the backup file
  Future<DateTime?> getLastBackupTime(String fileName);
  
  /// Get the current user account
  BackupUser? get currentUser;
}
