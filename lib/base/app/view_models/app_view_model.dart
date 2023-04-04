import 'dart:ui';

import 'package:event_app/domain/usecases/auth_usecases.dart';
import 'package:flutter/foundation.dart';

class AppViewModel extends ChangeNotifier {
  CheckStaffTokenUseCase checkStaffTokenUseCase;
  ClearStaffTokenUseCase clearStaffTokenUseCase;

  AppViewModel({
    required this.clearStaffTokenUseCase,
    required this.checkStaffTokenUseCase,
  });

  bool? _authenticated = false;

  bool? get authenticated => _authenticated;

  set authenticated(bool? value) {
    _authenticated = value;
    notifyListeners();
  }

  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  set locale(Locale value) {
    _locale = value;
    notifyListeners();
  }

  Future<bool> checkToken() async {
    final check = await checkStaffTokenUseCase.execute();

    if (check) {
      authenticated = true;
      print('authenticated user');
    } else {
      print('not authenticated user');
      authenticated = false;
    }

    return check;
  }

  Future clearToken() async {
    await clearStaffTokenUseCase.execute();
  }
}
