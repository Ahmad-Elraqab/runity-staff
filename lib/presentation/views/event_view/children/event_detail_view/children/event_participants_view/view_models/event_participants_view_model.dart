import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';
import 'package:event_app/domain/usecases/participant_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class EventParticipantsViewModel extends ChangeNotifier {
  EventParticipantsViewModel({
    required this.eventParticipantsWidgetViewModel,
    required this.getEventParticipantsUseCase,
  });

  GetEventParticipantsUseCase getEventParticipantsUseCase;
  EventParticipantsWidgetViewModel eventParticipantsWidgetViewModel;

  List<ParticipantEntity>? participants;
  Future<List<ParticipantEntity>>? getEventParticipants() async {
    participants = await getEventParticipantsUseCase.execute(
      eventId: eventParticipantsWidgetViewModel.eventId,
    );

    eventParticipantsWidgetViewModel.isLoading = false;

    return participants!;
  }
}
