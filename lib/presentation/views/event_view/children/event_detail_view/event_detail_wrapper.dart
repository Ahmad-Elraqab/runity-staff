import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/di/event_detail_dependencies.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class EventDetailWrapper extends StatefulWidget {
  const EventDetailWrapper({
    Key? key,
    @QueryParam('id') this.id,
    @QueryParam('startDate') this.startDate,
    @QueryParam('eventName') this.eventName,
  }) : super(key: key);

  final String? id;
  final String? startDate;
  final String? eventName;

  @override
  State<EventDetailWrapper> createState() => _EventDetailWrapperState();
}

class _EventDetailWrapperState extends State<EventDetailWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: EventDetailDependencies.of(
        context,
        date: widget.startDate,
        id: widget.id,
        name: widget.eventName,
      ).providers,
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}
