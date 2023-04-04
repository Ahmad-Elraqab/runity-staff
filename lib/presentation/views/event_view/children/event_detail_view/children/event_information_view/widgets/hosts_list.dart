import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_widget_view_model.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HostsList extends StatelessWidget {
  const HostsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = context.watch<EventInformationViewModel>().eventDetail;
    return Container(
      color: BoxColor,
      child: ListView.builder(
        controller:
            context.watch<EventInformationWidgetViewModel>().scrollController,
        itemCount: 1,
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          // decoration: BoxDecoration(
          //   border: Border(
          // bottom: BorderSide(color: BoxColor, width: 2.0),
          // ),
          // ),
          child: ExpandablePanel(
            collapsed: const SizedBox(),
            theme: const ExpandableThemeData(
              iconColor: WhiteColor,
              iconPadding: EdgeInsets.only(top: 20.0),
            ),
            header: Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                AppLocalizations.of(context)!.description,
                style: GoogleFonts.montserrat(
                  color: WhiteColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            expanded: Column(
              children: [
                // Container(
                //   margin: const EdgeInsets.only(bottom: 4.0),
                //   child: Row(
                //     children: [
                //       const SizedBox(width: 13),
                //       const CircleAvatar(
                //         radius: 2.0,
                //         backgroundColor: WhiteColor,
                //       ),
                //       const SizedBox(width: 10),
                //       Text(
                //         'Description 1',
                //         style: GoogleFonts.montserrat(
                //           color: WhiteColor,
                //           fontSize: 16.0,
                //           fontWeight: FontWeight.w400,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // const SizedBox(height: 20.0),
                // Text(
                //   'Same coffee, different brewing method, very different taste. Epresso vs Filter, which one are you.',
                //   style: GoogleFonts.montserrat(
                //     color: WhiteColor,
                //     fontSize: 16.0,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
                Html(
                  data: event!.event!.eventDescription,
                  style: {
                    'body': Style(color: WhiteColor),
                  },
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
