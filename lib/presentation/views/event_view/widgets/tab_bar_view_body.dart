import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:event_app/presentation/views/event_view/view_models/event_view_model.dart';
import 'package:event_app/presentation/views/event_view/view_models/event_widget_view_model.dart';
import 'package:event_app/presentation/views/event_view/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TabBarViewBody extends StatelessWidget {
  const TabBarViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget_view_model = context.watch<EventWidgetViewModel>();
    final view_model = context.watch<EventViewModel>();
    var selected;
    if (!widget_view_model.isLoading) {
      selected = widget_view_model.isFirstTab
          ? view_model.upcomingEvents
          : view_model.pastEvents;
    }
    return Expanded(
      child: selected.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Icon(
                    FontAwesomeIcons.circleExclamation,
                    size: 50.0,
                    color: WhiteColor,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  'No records \nwas found',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: WhiteColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: selected == null ? 0 : selected.length,
              itemBuilder: (context, index) {
                return EventCard(
                  event: selected[index],
                  onPressed: () => {
                    context.router.push(
                      EventDetailRouter(
                        eventName: (selected[index] as EventEntity).eventName,
                        id: (selected[index] as EventEntity).eventId,
                        startDate:
                            (selected[index] as EventEntity).eventStartDatetime,
                      ),
                    ),
                  },
                );
              },
            ),
    );
  }
}
