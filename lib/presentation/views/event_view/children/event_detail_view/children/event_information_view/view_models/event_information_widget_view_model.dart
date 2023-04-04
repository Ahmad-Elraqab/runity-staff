import 'package:flutter/material.dart';

class EventInformationWidgetViewModel extends ChangeNotifier {
  BuildContext context;
  EventInformationWidgetViewModel({required this.context});
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  String? _eventId;

  String? get eventId => _eventId;

  set eventId(String? value) {
    _eventId = value;
  }

  ScrollController scrollController = ScrollController();
  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
