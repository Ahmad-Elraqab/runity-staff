abstract class AuthRepository {
  static bool tokenIsEmpty = true;

  /// Get stored access token
  Future<String?> getToken();

  /// Persist access token
  Future<void> saveToken(String newToken);

  /// Get stored refresh token
  Future<String?> getRefreshToken();

  /// Persist new refresh token
  Future<void> saveRefreshToken(String newRefreshToken);

  /// Delete all saved data
  Future<void> clear();

  /// check token expiry
  Future<bool> checkToken();
}

class StorageKeys {
  static const token = 'token';
  static const refreshToken = 'refreshToken';
}
