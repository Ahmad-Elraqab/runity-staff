import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';
import 'package:flutter/cupertino.dart';

class EventParticipantsWidgetViewModel extends ChangeNotifier {
  BuildContext context;
  EventParticipantsWidgetViewModel({required this.context});
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  String? _eventId;

  String? get eventId => _eventId;

  set eventId(String? value) {
    _eventId = value;
  }

  int? _tab = 0;

  int? get tab => _tab;

  set tab(int? tab) {
    _tab = tab;
    notifyListeners();
  }

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  // ParticipantEntity? _selected;

  // ParticipantEntity? get selected => _selected;

  // set selected(ParticipantEntity? value) {
  //   _selected = value;
  // }

  List<ParticipantEntity> getTabList(List<ParticipantEntity> participants) {
    switch (tab) {
      case 0:
        return participants;
      case 1:
        return participants.where((e) => e.checkinDatetime == null).toList();
      case 2:
        return participants.where((e) => e.collectedDatetime == null).toList();
      default:
        return participants;
    }
  }
}
