import 'package:event_app/data/repositories/staff_repository_impl.dart';
import 'package:event_app/domain/repositories/staff_repository.dart';
import 'package:event_app/domain/usecases/auth_usecases.dart';
import 'package:event_app/domain/usecases/staff_usecases.dart';
import 'package:event_app/presentation/views/login_view/view_models/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:event_app/presentation/views/login_view/view_models/login_widget_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class LoginDependencies {
  LoginDependencies._(this.context);

  factory LoginDependencies.of(BuildContext context) {
    return _instance != null
        ? _instance!
        : _instance = LoginDependencies._(context);
  }

  static LoginDependencies? _instance;

  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [
    Provider<StaffRepository>(
      create: (context) => StaffRepositoryImpl(
        restService: context.read(),
      ),
    ),
  ];

  late final List<Provider> _usecases = [
    Provider<SigninStaffUseCase>(
      create: (context) => SigninStaffUseCase(
        repository: context.read(),
      ),
    ),
    Provider<SaveTokenUseCase>(
      create: (context) => SaveTokenUseCase(
        repository: context.read(),
      ),
    ),
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<LoginWidgetViewModel>(
      create: (context) => LoginWidgetViewModel(context: context),
    ),
    ChangeNotifierProvider<LoginViewModel>(
      create: (context) => LoginViewModel(
        appViewModel: context.read(),
        loginWidgetViewModel: context.read(),
        saveTokenUseCase: context.read(),
        signinStaffUseCase: context.read(),
      ),
    ),
  ];
}
