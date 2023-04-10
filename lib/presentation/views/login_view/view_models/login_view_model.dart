import 'package:event_app/base/app/view_models/app_view_model.dart';
import 'package:event_app/base/interceptors/custom_dio_errors.dart';
import 'package:event_app/domain/entities/staff_entity/staff_entity.dart';
import 'package:event_app/domain/error/exceptions.dart';
import 'package:event_app/domain/usecases/auth_usecases.dart';
import 'package:event_app/domain/usecases/staff_usecases.dart';
import 'package:event_app/presentation/views/login_view/view_models/login_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier {
  SigninStaffUseCase signinStaffUseCase;
  LoginWidgetViewModel loginWidgetViewModel;
  SaveTokenUseCase saveTokenUseCase;
  AppViewModel appViewModel;

  LoginViewModel({
    required this.appViewModel,
    required this.saveTokenUseCase,
    required this.signinStaffUseCase,
    required this.loginWidgetViewModel,
  });

  StaffEntity? staff;

  Future<Map<String, dynamic>> login() async {
    try {
      var _staff, _token;
      var info;
      if (loginWidgetViewModel.emailController.text.isEmpty ||
          loginWidgetViewModel.passwordController.text.isEmpty) {
        ErrorUIAction.excute('Fill in fields..!');
      } else {
        loginWidgetViewModel.isLoading = true;

        // ignore: no_leading_underscores_for_local_identifiers
        info = await signinStaffUseCase.execute(
          email: loginWidgetViewModel.emailController.text,
          password: loginWidgetViewModel.passwordController.text,
        );
        staff = info['data'];

        await saveTokenUseCase.execute(
          token: info['token'],
        );
        appViewModel.authenticated = true;

        loginWidgetViewModel.isLoading = false;
        await loginWidgetViewModel.navigate();
      }
      return {'data': info['data'], 'token': info['token'].toString()};
    } catch (e) {
      loginWidgetViewModel.isLoading = false;
      ErrorAction.excute(e as RestException);
      rethrow;
    }
  }
}
