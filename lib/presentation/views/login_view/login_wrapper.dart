import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/login_view/di/login_dependencies.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LoginWrapper extends StatefulWidget {
  const LoginWrapper({Key? key}) : super(key: key);

  @override
  State<LoginWrapper> createState() => _LoginWrapperState();
}

class _LoginWrapperState extends State<LoginWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // All child pages have access to ShopDependencies (repositories, blocs etc),
      // check [router.dart] to which pages who has access
      providers: LoginDependencies.of(context).providers,
      // Since we are accessing the provider immediately, we must use builder
      // to provide new context that contains the provider
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}
