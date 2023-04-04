import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/di/event_information_dependencies.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class EventInformationWrapper extends StatefulWidget {
  const EventInformationWrapper({Key? key, @QueryParam('id') this.eventId})
      : super(key: key);

  final String? eventId;
  @override
  State<EventInformationWrapper> createState() =>
      _EventInformationWrapperState();
}

class _EventInformationWrapperState extends State<EventInformationWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: EventInformationDependencies.of(context, id: widget.eventId!)
          .providers,
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}
