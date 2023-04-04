import 'package:event_app/data/datasources/auth_token_secure_storage.dart';
import 'package:event_app/data/datasources/auth_token_shared_prefs.dart';
import 'package:event_app/domain/repositories/auth_repository.dart';
import 'package:flutter/foundation.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthTokenSecureStorage authTokenSecureStorage;
  AuthTokenSharedPrefs authTokenSharedPrefs;

  AuthRepositoryImpl({
    required this.authTokenSecureStorage,
    required this.authTokenSharedPrefs,
  });

  @override
  Future<void> clear() {
    throw UnimplementedError();
  }

  @override
  Future<String?> getRefreshToken() {
    throw UnimplementedError();
  }

  @override
  Future<String?> getToken() {
    throw UnimplementedError();
  }

  @override
  Future<void> saveRefreshToken(String newRefreshToken) {
    throw UnimplementedError();
  }

  @override
  Future<void> saveToken(String newToken) async {
    if (kIsWeb) {
      await authTokenSharedPrefs.saveToken(newToken);
    } else {
      await authTokenSecureStorage.saveToken(newToken);
    }
  }

  @override
  Future<bool> checkToken() async {
    if (kIsWeb) {
      return await authTokenSharedPrefs.checkToken();
    } else {
      return await authTokenSecureStorage.checkToken();
    }
  }
}
