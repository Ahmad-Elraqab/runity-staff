import 'package:event_app/base/interceptors/custom_dio_errors.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:event_app/domain/error/exceptions.dart';
import 'package:event_app/domain/usecases/event_usecases.dart';
import 'package:event_app/presentation/views/event_view/view_models/event_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class EventViewModel extends ChangeNotifier {
  EventViewModel({
    required this.eventWidgetViewModel,
    required this.getAllEventsUseCase,
  });

  EventWidgetViewModel eventWidgetViewModel;
  GetAllEventsUseCase getAllEventsUseCase;

  List<EventEntity>? pastEvents;
  List<EventEntity>? upcomingEvents;

  Future<Map<String, dynamic>> getAllEvents() async {
    // Future<(List<EventEntity>, List<EventEntity>)> getAllEvents() async {
    try {
      eventWidgetViewModel.isLoading = true;
      // ignore: no_leading_underscores_for_local_identifiers
      final data = await getAllEventsUseCase.execute();

      pastEvents = data['past'];
      upcomingEvents = data['upcoming'];

      eventWidgetViewModel.isLoading = false;

      return {'past': pastEvents, 'upcoming': upcomingEvents};
    } catch (e) {
      eventWidgetViewModel.isLoading = false;
      ErrorAction.excute(e as RestException);
      rethrow;
    }
  }
}
