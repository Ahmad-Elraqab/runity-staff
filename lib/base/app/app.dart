import 'package:event_app/base/app/config/global_keys.dart';
import 'package:event_app/base/app/view_models/app_view_model.dart';
import 'package:event_app/base/routers/guards/auth_guard.dart';
import 'package:flutter/material.dart';
import 'package:event_app/base/app/config/environment_config.dart';
import 'package:event_app/base/di/app_dependencies.dart';
import 'package:event_app/base/interceptors/interceptors.dart';
import 'package:event_app/data/repositories/rest_repository.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../routers/router.gr.dart' as router;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// This widget is the root of your application.
class App extends StatelessWidget {
  App({this.config = EnvironmentConfig.prod, Key? key}) : super(key: key);

  final EnvironmentConfig config;
  final _router = router.Router(authGuard: AuthGuard.instance);

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: AppDependencies.of(context, config).providers,
        //providers: MockAppDependencies.of(context, config).providers,
        child: _MyMaterialApp(_router),
      );
}

/// Wrapper around the MaterialApp widget to provide additional functionality
/// accessible throughout the app (such as App-level dependencies, Firebase
/// services, etc).
class _MyMaterialApp extends StatefulWidget {
  const _MyMaterialApp(this._router);

  final router.Router _router;

  @override
  __MyMaterialAppState createState() => __MyMaterialAppState();
}

class __MyMaterialAppState extends State<_MyMaterialApp> {
  @override
  void initState() {
    super.initState();
    _addInterceptors();
    AuthGuard.init(appViewModel: context.read());
  }

  void _addInterceptors() {
    context.read<RestService>().dio.interceptors.addAll(
      [
        AppInterceptors(
          dio: context.read(),
          authTokenStorage: context.read(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, _) => ResponsiveWrapper.builder(
          // UpgradeAlert(
          MaterialApp.router(
            scaffoldMessengerKey: GlobalKeys.messengerKey,
            title: 'app',
            locale: context.watch<AppViewModel>().locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routeInformationParser: widget._router.defaultRouteParser(),
            routerDelegate: widget._router.delegate(
              navigatorObservers: () => [],
            ),
            debugShowCheckedModeBanner: false,
          ),
          // ),
          maxWidth: 500,
          minWidth: 350,
          defaultScale: false,
          breakpoints: [
            // const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.resize(2460, name: '4K'),
          ],
        ),
      );
}
