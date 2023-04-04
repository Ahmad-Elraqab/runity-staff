import 'package:dio/dio.dart';
import 'package:event_app/domain/repositories/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:http/http.dart' as http;

/// Concrete implementation of AuthTokenDataSource using FlutterSecureStorage.
/// Suitable for mobile.
/// Persist and get auth information to make it  available trough the app.
class AuthTokenSecureStorage implements AuthRepository {
  AuthTokenSecureStorage(this._storage);

  final FlutterSecureStorage _storage;

  /// Get stored access token
  @override
  Future<String?> getToken() => _storage.read(key: StorageKeys.token);

  /// Persist access token
  @override
  Future<void> saveToken(String newToken) =>
      _storage.write(key: StorageKeys.token, value: newToken);

  /// Get stored refresh token
  @override
  Future<String?> getRefreshToken() =>
      _storage.read(key: StorageKeys.refreshToken);

  /// Persist new refresh token
  @override
  Future<void> saveRefreshToken(String newRefreshToken) =>
      _storage.write(key: StorageKeys.refreshToken, value: newRefreshToken);

  /// Delete all saved data
  @override
  Future<void> clear() async => await _storage.deleteAll();

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
