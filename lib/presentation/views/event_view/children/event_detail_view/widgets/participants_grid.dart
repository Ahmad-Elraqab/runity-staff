import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/view_models/event_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
// ignore: library_prefixes
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParticipantsGrid extends StatelessWidget {
  const ParticipantsGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = context.watch<EventDetailViewModel>().eventSummary;
    final obj = [
      {
        't': AppLocalizations.of(context)!.totalParticipants,
        'c': event!.totalParticipant
      },
      {
        't': AppLocalizations.of(context)!.checkedIn,
        'c': event.totalCheckedIn,
      },
      {
        't': AppLocalizations.of(context)!.collectedItems,
        'c': event.totalCollected
      },
    ];
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 17.0,
      crossAxisSpacing: 20.0,
      children: [
        for (var i = 0; i < 3; i++)
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: i == 0 ? 3 : 1.5,
            child: Container(
              decoration: BoxDecoration(
                color: BoxColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      obj[i]['c'].toString(),
                      style: GoogleFonts.montserrat(
                        color: WhiteColor,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      obj[i]['t'].toString(),
                      style: GoogleFonts.montserrat(
                        color: SubTextColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
