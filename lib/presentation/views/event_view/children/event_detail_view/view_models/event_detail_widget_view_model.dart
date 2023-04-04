import 'package:flutter/cupertino.dart';

class EventDetailWidgetViewModel extends ChangeNotifier {
  BuildContext context;
  EventDetailWidgetViewModel({
    required this.context,
    required this.id,
    required this.startDate,
    required this.eventName,
  });
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  String? id;
  String? startDate;
  String? eventName;

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
