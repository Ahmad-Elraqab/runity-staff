import 'package:flutter/cupertino.dart';

class EventWidgetViewModel extends ChangeNotifier {
  BuildContext context;
  EventWidgetViewModel({required this.context});
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  bool _isFirstTab = true;

  bool get isFirstTab => _isFirstTab;

  set isFirstTab(bool isFirstTab) {
    _isFirstTab = isFirstTab;
    notifyListeners();
  }

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
