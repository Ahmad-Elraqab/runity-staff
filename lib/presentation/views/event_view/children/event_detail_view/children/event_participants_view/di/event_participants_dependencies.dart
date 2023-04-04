import 'package:event_app/data/repositories/participant_repository.dart';
import 'package:event_app/domain/repositories/participant_repository.dart';
import 'package:event_app/domain/usecases/participant_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class EventParticipantsDependencies {
  EventParticipantsDependencies(this.context, this.id);

  factory EventParticipantsDependencies.of(BuildContext context,
          {String? id}) =>
      EventParticipantsDependencies(context, id);

  final String? id;
  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [
    Provider<ParticipantRepository>(
      create: (context) => ParticipantRepositoryImpl(
        restService: context.read(),
      ),
    )
  ];

  late final List<Provider> _usecases = [
    Provider<GetEventParticipantsUseCase>(
      create: (context) => GetEventParticipantsUseCase(
        repository: context.read(),
      ),
    )
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<EventParticipantsWidgetViewModel>(
      create: (context) =>
          EventParticipantsWidgetViewModel(context: context)..eventId = id,
    ),
    ChangeNotifierProvider<EventParticipantsViewModel>(
      create: (context) => EventParticipantsViewModel(
        getEventParticipantsUseCase: context.read(),
        eventParticipantsWidgetViewModel: context.read(),
      )..getEventParticipants(),
    ),
  ];
}
