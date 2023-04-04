import 'package:event_app/domain/entities/participant_detail_entity/participant_detail_entity.dart';
import 'package:event_app/domain/usecases/participant_usecases.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/view_models/qr_code_response_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class QRCodeResponseViewModel extends ChangeNotifier {
  QRCodeResponseViewModel({
    required this.getEventParticipantDetailUseCase,
    required this.qRCodeResponseWidgetViewModel,
  });

  ParticipantDetailEntity? participantDetail;
  GetEventParticipantDetailUseCase getEventParticipantDetailUseCase;
  QRCodeResponseWidgetViewModel qRCodeResponseWidgetViewModel;

  Future<ParticipantDetailEntity> getParticipantDetail() async {
    // qRCodeResponseWidgetViewModel.loading = true;
    final data = await getEventParticipantDetailUseCase.execute(
      participantId:
          qRCodeResponseWidgetViewModel.qRResponse!.eventParticipantId,
    )!;

    participantDetail = data;
    qRCodeResponseWidgetViewModel.loading = false;
    notifyListeners();
    return data;
  }
}
