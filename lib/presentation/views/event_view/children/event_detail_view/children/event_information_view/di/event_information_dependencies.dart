import 'package:event_app/domain/usecases/event_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class EventInformationDependencies {
  EventInformationDependencies(this.context, this.id);

  factory EventInformationDependencies.of(BuildContext context, {String? id}) =>
      EventInformationDependencies(context, id);

  final String? id;

  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [
    // Provider<EventRepository>(
    //   create: (context) => EventRepositoryImpl(
    //     restService: context.read(),
    //   ),
    // )
  ];

  late final List<Provider> _usecases = [
    Provider<GetEventDetailUseCase>(
      create: (context) => GetEventDetailUseCase(
        repository: context.read(),
      ),
    )
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<EventInformationWidgetViewModel>(
      create: (context) =>
          EventInformationWidgetViewModel(context: context)..eventId = id,
    ),
    ChangeNotifierProvider<EventInformationViewModel>(
      create: (context) => EventInformationViewModel(
        getEventDetailUseCase: context.read(),
        eventInformationWidgetViewModel: context.read(),
      )..getEventDetail(),
    ),
  ];
}
