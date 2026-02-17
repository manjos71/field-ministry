/// OAuth configuration for cloud backup services
class OAuthConfig {
  // Microsoft OneDrive / Azure AD Configuration
  static const String oneDriveClientId = '465dea50-3676-4958-96ca-6e2793999b85';
  static const String oneDriveTenantId = 'common';
  static const String oneDriveAuthority = 'https://login.microsoftonline.com/$oneDriveTenantId';
  static const String oneDriveTokenUrl = '$oneDriveAuthority/oauth2/v2.0/token';
  static const String oneDriveAuthorizationUrl = '$oneDriveAuthority/oauth2/v2.0/authorize';
  
  // Redirect URI (must be registered in Azure AD)
  static const String oneDriveRedirectUrl = 'com.fieldministry.fieldministry://oauth2redirect';
  
  // Microsoft Graph API
  static const String microsoftGraphApiUrl = 'https://graph.microsoft.com/v1.0';
  static const String oneDriveUploadUrl = '$microsoftGraphApiUrl/me/drive/root:/Field%20Ministry%20Backups';
  
  // OAuth scopes for OneDrive
  static const List<String> oneDriveScopes = [
    'offline_access',
    'User.Read',
    'Files.ReadWrite.All',
  ];
  
  // Discovery URL for dynamic discovery (optional, for advanced setups)
  static const String microsoftDiscoveryUrl = 
    'https://login.microsoftonline.com/$oneDriveTenantId/v2.0/.well-known/openid-configuration';
}
