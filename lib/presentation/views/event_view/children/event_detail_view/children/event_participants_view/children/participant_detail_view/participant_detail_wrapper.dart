import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/di/participant_detail_dependencies.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ParticipantDetailWrapper extends StatefulWidget {
  const ParticipantDetailWrapper({Key? key, @QueryParam('id') this.id})
      : super(key: key);

  final String? id;
  @override
  State<ParticipantDetailWrapper> createState() =>
      _ParticipantDetailWrapperState();
}

class _ParticipantDetailWrapperState extends State<ParticipantDetailWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // All child pages have access to ShopDependencies (repositories, blocs etc),
      // check [router.dart] to which pages who has access
      providers:
          ParticipantDetailDependencies.of(context, id: widget.id!).providers,
      // Since we are accessing the provider immediately, we must use builder
      // to provide new context that contains the provider
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}
