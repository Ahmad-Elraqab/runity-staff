import 'package:event_app/domain/entities/event_detail_entity/event_detail_entity.dart';
import 'package:event_app/domain/usecases/event_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_widget_view_model.dart';
import 'package:flutter/material.dart';

class EventInformationViewModel extends ChangeNotifier {
  EventInformationViewModel({
    required this.getEventDetailUseCase,
    required this.eventInformationWidgetViewModel,
  });

  EventInformationWidgetViewModel eventInformationWidgetViewModel;
  GetEventDetailUseCase getEventDetailUseCase;

  EventDetailEntity? eventDetail;
  Future<EventDetailEntity> getEventDetail() async {
    try {
      // eventInformationWidgetViewModel.isLoading = true;

      eventDetail = await getEventDetailUseCase.execute(
        eventId: eventInformationWidgetViewModel.eventId,
      );

      eventInformationWidgetViewModel.isLoading = false;
      notifyListeners();
      return eventDetail!;
    } catch (e) {
      rethrow;
    }
  }
}
