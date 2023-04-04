import 'package:event_app/domain/entities/event_summary_entity/event_summary_entity.dart';
import 'package:event_app/domain/usecases/event_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/view_models/event_detail_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class EventDetailViewModel extends ChangeNotifier {
  EventDetailViewModel({
    required this.eventDetailWidgetViewModel,
    required this.getEventSummaryUseCase,
  });

  GetEventSummaryUseCase getEventSummaryUseCase;
  EventDetailWidgetViewModel eventDetailWidgetViewModel;

  EventSummaryEntity? eventSummary;

  Future<EventSummaryEntity> getEventSummaryById() async {
    try {
      // eventDetailWidgetViewModel.isLoading = true;
      eventSummary = await getEventSummaryUseCase.execute(
          id: eventDetailWidgetViewModel.id);

      eventDetailWidgetViewModel.isLoading = false;
      notifyListeners();
      return eventSummary!;
    } catch (e) {
      rethrow;
    }
  }
}
