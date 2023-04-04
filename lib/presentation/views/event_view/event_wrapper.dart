import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/event_view/di/event_dependencies.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class EventWrapper extends StatefulWidget {
  const EventWrapper({Key? key}) : super(key: key);

  @override
  State<EventWrapper> createState() => _EventWrapperState();
}

class _EventWrapperState extends State<EventWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // All child pages have access to ShopDependencies (repositories, blocs etc),
      // check [router.dart] to which pages who has access
      providers: EventDependencies.of(context).providers,
      // Since we are accessing the provider immediately, we must use builder
      // to provide new context that contains the provider
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}
