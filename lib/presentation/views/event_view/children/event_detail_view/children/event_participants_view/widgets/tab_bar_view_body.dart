import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_widget_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/widgets/participants_list_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabBarViewBody extends StatelessWidget {
  const TabBarViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<EventParticipantsViewModel>();
    final widgetViewModel = context.watch<EventParticipantsWidgetViewModel>();
    final participants = widgetViewModel.getTabList(viewModel.participants!);
    return Expanded(
      child: participants.isEmpty
          ? Center(
              child: Column(
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
              ),
            )
          : ListView.builder(
              itemCount: participants.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        // context
                        //     .read<EventParticipantsWidgetViewModel>()
                        //     .selected = participants[index],
                        context.router.push(
                          ParticipantRouter(
                            id: participants[index].eventParticipantId,
                          ),
                        ),
                      },
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 15.0,
                          ),
                        ),
                        backgroundColor:
                            const MaterialStatePropertyAll(lightPurple),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ParticipantsListItem(
                            participant: participants[index]),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                  ],
                );
              },
            ),
    );
  }
}
