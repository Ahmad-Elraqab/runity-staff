import 'package:event_app/domain/usecases/event_usecases.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/view_models/event_detail_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/view_models/event_detail_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class EventDetailDependencies {
  EventDetailDependencies(this.context, this.id, this.name, this.date);

  factory EventDetailDependencies.of(
    BuildContext context, {
    String? id,
    String? name,
    String? date,
  }) =>
      EventDetailDependencies(context, id, name, date);

  final BuildContext context;

  final String? id;
  final String? name;
  final String? date;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [];

  late final List<Provider> _usecases = [
    Provider<GetEventSummaryUseCase>(
      create: (context) => GetEventSummaryUseCase(
        repository: context.read(),
      ),
    )
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<EventDetailWidgetViewModel>(
      create: (context) => EventDetailWidgetViewModel(
        context: context,
        eventName: name,
        id: id,
        startDate: date,
      ),
    ),
    ChangeNotifierProvider<EventDetailViewModel>(
      create: (context) => EventDetailViewModel(
        eventDetailWidgetViewModel: context.read(),
        getEventSummaryUseCase: context.read(),
      )..getEventSummaryById(),
    ),
  ];
}
