import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/view_models/event_detail_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/view_models/event_detail_widget_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/widgets/all_participant_button.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/widgets/participants_grid.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/widgets/participants_grid_shimmer.dart';
import 'package:event_app/presentation/views/event_view/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventDetailView extends StatefulWidget {
  const EventDetailView({super.key});

  @override
  State<EventDetailView> createState() => _EventDetailViewState();
}

class _EventDetailViewState extends State<EventDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<EventDetailWidgetViewModel, EventDetailViewModel>(
        builder: (context, value, value2, child) => SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: PrimaryColor,
            ),
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
                      Expanded(
                        child: Text(
                          value.eventName!,
                          style: GoogleFonts.montserrat(
                            color: WhiteColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36.0,
                ),
                InkWell(
                  onTap: () => {
                    context.router.push(
                      EventInformationRouter(eventId: value.id),
                    ),
                  },
                  child: EventCard(
                    isDate: false,
                    event: EventEntity(
                      eventId: value.id,
                      eventName: value.eventName,
                      eventStartDatetime: value.startDate,
                    ),
                    onPressed: () => context.router.push(
                      EventInformationRouter(eventId: value.id),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Text(
                  AppLocalizations.of(context)!.participants,
                  style: GoogleFonts.montserrat(
                    color: WhiteColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 23.0,
                ),
                value.isLoading
                    ? const ParticipantsGridShimmer()
                    : const ParticipantsGrid(),
                const SizedBox(
                  height: 23.0,
                ),
                const AllParticipantButton(),
                const Expanded(child: SizedBox()),
                Center(
                  child: InkWell(
                    onTap: () => context.router.push(
                      QRCodeRouter(
                        id: value.id,
                      ),
                    ),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/images/qr.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 62.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
