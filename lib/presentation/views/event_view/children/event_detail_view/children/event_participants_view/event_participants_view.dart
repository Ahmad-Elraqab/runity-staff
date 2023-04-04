import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_widget_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/widgets/participants_shimmer.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/widgets/tab_bar_header.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/widgets/tab_bar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventParticipantsView extends StatefulWidget {
  const EventParticipantsView({super.key});

  @override
  State<EventParticipantsView> createState() => _EventParticipantsViewState();
}

class _EventParticipantsViewState extends State<EventParticipantsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<EventParticipantsWidgetViewModel,
          EventParticipantsViewModel>(
        builder: (context, value, value2, child) => Container(
          color: PrimaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 54.0,
              ),
              InkWell(
                onTap: () => context.router.pop(),
                child: Row(
                  children: [
                    Image.asset('assets/images/arrowBack.png'),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      value.isLoading
                          ? ''
                          : AppLocalizations.of(context)!.participantsSlot(value
                              .getTabList(value2.participants!)
                              .length
                              .toString()),
                      style: GoogleFonts.montserrat(
                        color: WhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 31.0,
              ),
              const TabBarHeader(),
              value.isLoading
                  ? const ParticipantsShimmer()
                  : const TabBarViewBody()
            ],
          ),
        ),
      ),
    );
  }
}
