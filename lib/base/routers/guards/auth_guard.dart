import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/view_models/app_view_model.dart';
import 'package:event_app/base/routers/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  factory AuthGuard.init({
    required AppViewModel appViewModel,
  }) {
    _instance._appViewModel = appViewModel;

    return _instance;
  }
  AuthGuard._internal();

  static final AuthGuard _instance = AuthGuard._internal();

  static AuthGuard get instance => _instance;

  late AppViewModel _appViewModel;

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (await _appViewModel.checkToken()) {
      resolver.next(true);
    } else {
      await router.push(const LoginRouter());
    }
  }

  // Future<void> onProtectedCallback(StackRouter router,
  //     {required void Function() onSuccess}) async {

  //   }
  // }
}
