import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/di/event_participants_dependencies.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class EventParticipantsWrapper extends StatefulWidget {
  const EventParticipantsWrapper({Key? key, @QueryParam('id') this.id})
      : super(key: key);

  final String? id;
  @override
  State<EventParticipantsWrapper> createState() =>
      _EventParticipantsWrapperState();
}

class _EventParticipantsWrapperState extends State<EventParticipantsWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:
          EventParticipantsDependencies.of(context, id: widget.id!).providers,
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}
