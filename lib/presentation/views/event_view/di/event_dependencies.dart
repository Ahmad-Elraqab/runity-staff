import 'package:event_app/data/repositories/event_repository_impl.dart';
import 'package:event_app/domain/repositories/event_repository.dart';
import 'package:event_app/domain/usecases/auth_usecases.dart';
import 'package:event_app/domain/usecases/event_usecases.dart';
import 'package:event_app/presentation/views/event_view/view_models/event_view_model.dart';
import 'package:event_app/presentation/views/event_view/view_models/event_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class EventDependencies {
  EventDependencies._(this.context);

  factory EventDependencies.of(BuildContext context) {
    return _instance != null
        ? _instance!
        : _instance = EventDependencies._(context);
  }

  static EventDependencies? _instance;

  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [
    Provider<EventRepository>(
      create: (context) => EventRepositoryImpl(
        restService: context.read(),
      ),
    )
  ];

  late final List<Provider> _usecases = [
    Provider<GetAllEventsUseCase>(
      create: (context) => GetAllEventsUseCase(
        repository: context.read(),
      ),
    ),
    Provider<ClearStaffTokenUseCase>(
      create: (context) => ClearStaffTokenUseCase(
        repository: context.read(),
      ),
    ),
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<EventWidgetViewModel>(
      create: (context) => EventWidgetViewModel(context: context),
    ),
    ChangeNotifierProvider<EventViewModel>(
      create: (context) => EventViewModel(
        eventWidgetViewModel: context.read(),
        getAllEventsUseCase: context.read(),
      ),
    ),
  ];
}
