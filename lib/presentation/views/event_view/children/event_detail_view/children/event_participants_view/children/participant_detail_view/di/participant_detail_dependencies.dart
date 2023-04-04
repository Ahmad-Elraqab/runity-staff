import 'package:event_app/domain/usecases/participant_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/view_models/participant_detail_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/view_models/participant_detail_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ParticipantDetailDependencies {
  ParticipantDetailDependencies(this.context, this.id);

  factory ParticipantDetailDependencies.of(BuildContext context,
          {String? id}) =>
      ParticipantDetailDependencies(context, id);

  final String? id;

  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [];

  late final List<Provider> _usecases = [
    Provider<GetEventParticipantDetailUseCase>(
      create: (context) => GetEventParticipantDetailUseCase(
        repository: context.read(),
      ),
    )
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<ParticipantDetailWidgetViewModel>(
      create: (context) =>
          ParticipantDetailWidgetViewModel(context: context)..id = id,
    ),
    ChangeNotifierProvider<ParticipantDetailViewModel>(
      create: (context) => ParticipantDetailViewModel(
        getEventParticipantDetailUseCase: context.read(),
        participantDetailWidgetViewModel: context.read(),
      )..getParticipantDetail(),
    ),
  ];
}
