import 'package:dio/dio.dart';
import 'package:event_app/base/app/view_models/app_view_model.dart';
import 'package:event_app/data/datasources/auth_token_secure_storage.dart';
import 'package:event_app/data/datasources/auth_token_shared_prefs.dart';
import 'package:event_app/data/datasources/shared_preferences_wrapper.dart';
import 'package:event_app/domain/repositories/auth_repository.dart';
import 'package:event_app/domain/usecases/auth_usecases.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:event_app/base/app/config/environment_config.dart';
import 'package:event_app/data/repositories/rest_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppDependencies {
  AppDependencies._(this.context, this.config);

  factory AppDependencies.of(
          BuildContext context, EnvironmentConfig envConfig) =>
      _instance != null
          ? _instance!
          : _instance = AppDependencies._(context, envConfig);

  static AppDependencies? _instance;

  final BuildContext context;
  final EnvironmentConfig config;

  /// List of all providers used throughout the app
  List<SingleChildWidget> get providers => [
        ..._analytics,
        ..._httpClients,
        ..._dataStorages,
        ..._dataSources,
        ..._repositories,
        ..._useCases,
        ..._viewmodels,
        ..._interceptors,
      ];

  List<Provider> get _analytics => [];

  List<Provider> get _httpClients => [
        Provider<Dio>(create: (context) => Dio()),
        Provider<RestService>(
          create: (context) => RestService(baseUrl: config.baseApiUrl),
        ),
      ];

  List<SingleChildWidget> get _dataStorages => [
        Provider<SharedPreferencesWrapper>(
          create: (context) => SharedPreferencesWrapper(),
        ),
        Provider<FlutterSecureStorage>(
          create: (context) => const FlutterSecureStorage(),
        ),
      ];

  /// Use different data source regarding of if it is running in web ot not
  List<Provider> get _dataSources => [
        Provider<AuthRepository>(
          create: (context) => kIsWeb
              ? AuthTokenSharedPrefs(
                  context.read<SharedPreferencesWrapper>(),
                )
              : AuthTokenSecureStorage(
                  context.read<FlutterSecureStorage>(),
                ),
        ),
      ];

  List<Provider> get _repositories => [];

  List<Provider> get _useCases => [
        Provider<CheckStaffTokenUseCase>(
          create: (context) => CheckStaffTokenUseCase(
            repository: context.read(),
          ),
        ),
        Provider<ClearStaffTokenUseCase>(
          create: (context) => ClearStaffTokenUseCase(
            repository: context.read(),
          ),
        )
      ];

  List<ChangeNotifierProvider> get _viewmodels => [
        ChangeNotifierProvider<AppViewModel>(
          create: (context) => AppViewModel(
            clearStaffTokenUseCase: context.read(),
            checkStaffTokenUseCase: context.read(),
          ),
        ),
      ];

  List<Provider> get _interceptors => [];
}
