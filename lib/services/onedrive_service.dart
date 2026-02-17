import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import '../config/oauth_config.dart';
import 'backup_service.dart';

class OneDriveService implements BackupService {
  static const String backupFolder = 'Field Ministry Backups';
  
  final FlutterAppAuth _appAuth = const FlutterAppAuth();
  String? _accessToken;
  String? _refreshToken;
  DateTime? _tokenExpiry;
  BackupUser? _currentUser;
  bool _isSigningIn = false;
  
  @override
  Future<BackupUser?> signIn() async {
    if (_isSigningIn) {
      throw Exception('Login do OneDrive já está em andamento.');
    }

    _isSigningIn = true;
    try {
      debugPrint('Starting OneDrive sign-in via Azure AD...');
      
      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          OAuthConfig.oneDriveClientId,
          OAuthConfig.oneDriveRedirectUrl,
          serviceConfiguration: const AuthorizationServiceConfiguration(
            authorizationEndpoint: 'https://login.microsoftonline.com/common/oauth2/v2.0/authorize',
            tokenEndpoint: 'https://login.microsoftonline.com/common/oauth2/v2.0/token',
          ),
          scopes: OAuthConfig.oneDriveScopes,
        ),
      );

      if (result == null) {
        debugPrint('OneDrive sign-in cancelled by user');
        return null;
      }

      _accessToken = result.accessToken;
      _refreshToken = result.refreshToken;
      
      // Decode token to get expiry
      try {
        final decodedToken = JwtDecoder.decode(result.accessToken!);
        final exp = decodedToken['exp'] as int?;
        if (exp != null) {
          _tokenExpiry = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
        }
      } catch (e) {
        debugPrint('Error decoding token: $e');
      }

      _currentUser = await _fetchCurrentUser();
      if (_currentUser == null) {
        throw Exception('Não foi possível obter o perfil do usuário OneDrive.');
      }

      debugPrint('OneDrive sign-in successful');
      return _currentUser;
      
    } on PlatformException catch (e) {
      final message = e.message ?? e.code;
      debugPrint('OneDrive PlatformException: $message');
      throw Exception('Falha no login OneDrive: $message');
    } catch (e) {
      debugPrint('Error signing in to OneDrive: $e');
      rethrow;
    } finally {
      _isSigningIn = false;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      // Revoke token if possible (optional)
      if (_accessToken != null) {
        try {
          await http.post(
            Uri.parse('${OAuthConfig.oneDriveAuthority}/oauth2/v2.0/revoke'),
            body: {
              'client_id': OAuthConfig.oneDriveClientId,
              'token': _accessToken,
            },
          );
        } catch (e) {
          debugPrint('Token revocation failed (non-critical): $e');
        }
      }
      
      _accessToken = null;
      _refreshToken = null;
      _tokenExpiry = null;
      _currentUser = null;
      
      debugPrint('Signed out from OneDrive');
    } catch (e) {
      debugPrint('Error signing out from OneDrive: $e');
    }
  }

  @override
  Future<void> uploadBackup(String jsonData, String fileName) async {
    if (_accessToken == null) {
      throw Exception('Not signed in to OneDrive');
    }

    try {
      await _ensureValidToken();
      
      debugPrint('Uploading backup to OneDrive: $fileName');
      
      final uploadUrl = '${OAuthConfig.microsoftGraphApiUrl}/me/drive/root:'
          '/Field%20Ministry%20Backups/$fileName:/content';
      
      final response = await http.put(
        Uri.parse(uploadUrl),
        headers: {
          'Authorization': 'Bearer $_accessToken',
          'Content-Type': 'application/json',
        },
        body: jsonData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint('OneDrive backup uploaded successfully: $fileName');
      } else {
        throw Exception('Failed to upload backup (${response.statusCode}): ${response.body}');
      }
    } catch (e) {
      debugPrint('Error uploading backup to OneDrive: $e');
      rethrow;
    }
  }

  @override
  Future<String?> downloadBackup(String fileName) async {
    if (_accessToken == null) {
      throw Exception('Not signed in to OneDrive');
    }

    try {
      await _ensureValidToken();
      
      debugPrint('Downloading backup from OneDrive: $fileName');
      
      final downloadUrl = '${OAuthConfig.microsoftGraphApiUrl}/me/drive/root:'
          '/Field%20Ministry%20Backups/$fileName:/content';
      
      final response = await http.get(
        Uri.parse(downloadUrl),
        headers: {
          'Authorization': 'Bearer $_accessToken',
        },
      );

      if (response.statusCode == 200) {
        debugPrint('OneDrive backup downloaded successfully: $fileName');
        return response.body;
      } else if (response.statusCode == 404) {
        debugPrint('Backup not found on OneDrive: $fileName');
        return null;
      } else {
        throw Exception('Failed to download backup (${response.statusCode}): ${response.body}');
      }
    } catch (e) {
      debugPrint('Error downloading backup from OneDrive: $e');
      rethrow;
    }
  }

  @override
  Future<DateTime?> getLastBackupTime(String fileName) async {
    if (_accessToken == null) return null;

    try {
      await _ensureValidToken();
      
      final metadataUrl = '${OAuthConfig.microsoftGraphApiUrl}/me/drive/root:'
          '/Field%20Ministry%20Backups/$fileName';
      
      final response = await http.get(
        Uri.parse(metadataUrl),
        headers: {
          'Authorization': 'Bearer $_accessToken',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final modifiedTime = data['lastModifiedDateTime'] as String?;
        
        if (modifiedTime != null) {
          return DateTime.parse(modifiedTime);
        }
      }
      
      return null;
    } catch (e) {
      debugPrint('Error getting backup info from OneDrive: $e');
      return null;
    }
  }

  @override
  BackupUser? get currentUser => _currentUser;

  Future<BackupUser?> _fetchCurrentUser() async {
    if (_accessToken == null) return null;

    final response = await http.get(
      Uri.parse('${OAuthConfig.microsoftGraphApiUrl}/me'),
      headers: {
        'Authorization': 'Bearer $_accessToken',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao obter perfil OneDrive (${response.statusCode}): ${response.body}');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final id = (data['id'] as String?)?.trim();
    final email = ((data['mail'] as String?) ?? (data['userPrincipalName'] as String?) ?? '').trim();
    final displayName = (data['displayName'] as String?)?.trim();

    if (id == null || id.isEmpty || email.isEmpty) {
      throw Exception('Resposta de perfil OneDrive incompleta.');
    }

    return BackupUser(
      id: id,
      email: email,
      displayName: displayName,
      photoUrl: null,
    );
  }

  /// Ensures the access token is valid, refreshing if necessary
  Future<void> _ensureValidToken() async {
    if (_accessToken == null) {
      throw Exception('Not authenticated');
    }

    // Check if token is expiring soon (within 5 minutes)
    if (_tokenExpiry != null) {
      final now = DateTime.now();
      final timeUntilExpiry = _tokenExpiry!.difference(now);
      
      if (timeUntilExpiry.inMinutes < 5) {
        await _refreshAccessToken();
      }
    }
  }

  /// Refreshes the access token using the refresh token
  Future<void> _refreshAccessToken() async {
    if (_refreshToken == null) {
      throw Exception('No refresh token available');
    }

    try {
      debugPrint('Refreshing OneDrive access token...');
      
      final response = await http.post(
        Uri.parse(OAuthConfig.oneDriveTokenUrl),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'client_id': OAuthConfig.oneDriveClientId,
          'refresh_token': _refreshToken,
          'grant_type': 'refresh_token',
          'scope': OAuthConfig.oneDriveScopes.join(' '),
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        _accessToken = data['access_token'] as String?;
        _refreshToken = data['refresh_token'] as String? ?? _refreshToken;
        
        // Update token expiry
        final expiresIn = data['expires_in'] as int?;
        if (expiresIn != null) {
          _tokenExpiry = DateTime.now().add(Duration(seconds: expiresIn));
        }
        
        debugPrint('OneDrive token refreshed successfully');
      } else {
        throw Exception('Failed to refresh token (${response.statusCode}): ${response.body}');
      }
    } catch (e) {
      debugPrint('Error refreshing OneDrive token: $e');
      rethrow;
    }
  }

}
