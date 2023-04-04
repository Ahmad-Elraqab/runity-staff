import 'package:event_app/domain/repositories/auth_repository.dart';
import 'shared_preferences_wrapper.dart';
import 'package:jwt_decode/jwt_decode.dart';

/// Concrete implementation of AuthTokenDataSource using SharedPreferences.
/// Suitable for mobile and web.
/// Persist and get auth information to make it  available trough the app.
class AuthTokenSharedPrefs implements AuthRepository {
  AuthTokenSharedPrefs(SharedPreferencesWrapper storage) : _storage = storage;

  final SharedPreferencesWrapper _storage;

  /// Get stored access token
  @override
  Future<String?> getToken() => _storage.getString(StorageKeys.token);

  /// Persist access token
  @override
  Future<bool> saveToken(String newToken) =>
      _storage.setString(StorageKeys.token, newToken);

  /// Get stored refresh token
  @override
  Future<String?> getRefreshToken() =>
      _storage.getString(StorageKeys.refreshToken);

  /// Persist new refresh token
  @override
  Future<bool> saveRefreshToken(String newRefreshToken) =>
      _storage.setString(StorageKeys.refreshToken, newRefreshToken);

  /// Delete all saved data
  @override
  Future<bool> clear() async => await _storage.clear();

  @override
  Future<bool> checkToken() async {
    try {
      final String? token = await getToken();

      if (token == null) {
        return false;
      } else {
        final expired = Jwt.isExpired(token);

        if (expired) {
          return false;
        } else {
          return true;
        }
      }
    } catch (e) {
      return false;
    }
  }
}
