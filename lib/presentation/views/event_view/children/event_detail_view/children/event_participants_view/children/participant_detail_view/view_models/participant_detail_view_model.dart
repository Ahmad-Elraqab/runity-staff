import 'package:event_app/domain/entities/participant_detail_entity/participant_detail_entity.dart';
import 'package:event_app/domain/usecases/participant_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/view_models/participant_detail_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class ParticipantDetailViewModel extends ChangeNotifier {
  ParticipantDetailViewModel({
    required this.participantDetailWidgetViewModel,
    required this.getEventParticipantDetailUseCase,
  });

  ParticipantDetailWidgetViewModel participantDetailWidgetViewModel;
  GetEventParticipantDetailUseCase getEventParticipantDetailUseCase;

  ParticipantDetailEntity? participantDetail;

  Future<ParticipantDetailEntity> getParticipantDetail() async {
    // participantDetailWidgetViewModel.isLoading = true;

    participantDetail = await getEventParticipantDetailUseCase.execute(
      participantId: participantDetailWidgetViewModel.id,
    );

    participantDetailWidgetViewModel.setForm(participantDetail!);
    notifyListeners();

    participantDetailWidgetViewModel.isLoading = false;

    return participantDetail!;
  }
}
