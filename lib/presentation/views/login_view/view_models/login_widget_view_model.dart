import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:flutter/cupertino.dart';

class LoginWidgetViewModel extends ChangeNotifier {
  BuildContext context;
  LoginWidgetViewModel({required this.context});
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  void setEmail(value) {
    emailController.text = value;
  }

  void setPassword(value) {
    passwordController.text = value;
  }

  Future navigate() async {
    return await context.router.replace(const EventRouter());
  }
}
