import 'package:event_app/domain/entities/participant_detail_entity/participant_detail_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParticipantDetailWidgetViewModel extends ChangeNotifier {
  ParticipantDetailWidgetViewModel({required this.context});
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  BuildContext context;

  String? _id;

  String? get id => _id;

  set id(String? value) {
    _id = value;
  }

  final List obj = [];

  void setForm(ParticipantDetailEntity details) {
    obj.addAll([
      details.participant!.userName.toString(),
      details.participant!.eventCategoryName.toString(),
      details.participant!.eventCategoryName.toString(),
      details.zip!.toString(),
      details.event!.eventCity!.toString(),
      details.participant!.createdDatetime.toString(),
      details.participant!.userEmail.toString(),
      details.participant!.userPhone.toString(),
      '1',
      details.fullAddress.toString(),
      details.participant!.userPhoneCountry.toString(),
      details.city.toString(),
      details.state.toString(),
      details.customAddress.toString(),
      '2',
      details.participant!.emergencyContactName.toString(),
      details.participant!.emergencyContactPhone.toString(),
    ]);
  }

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
