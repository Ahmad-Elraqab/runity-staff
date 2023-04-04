import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/view_models/participant_detail_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParticipantDetails extends StatelessWidget {
  const ParticipantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final obj = context.watch<ParticipantDetailWidgetViewModel>().obj;
    final objLabel = [
      AppLocalizations.of(context)!.fullname,
      AppLocalizations.of(context)!.gender,
      AppLocalizations.of(context)!.shirtSize,
      AppLocalizations.of(context)!.nricPassport,
      AppLocalizations.of(context)!.nationality,
      AppLocalizations.of(context)!.birthday,
      AppLocalizations.of(context)!.email,
      AppLocalizations.of(context)!.mobileContact,
      '',
      AppLocalizations.of(context)!.address,
      AppLocalizations.of(context)!.postcode,
      AppLocalizations.of(context)!.city,
      AppLocalizations.of(context)!.state,
      AppLocalizations.of(context)!.country,
      '',
      AppLocalizations.of(context)!.emergencyContactName,
      AppLocalizations.of(context)!.emergencyMobileName,
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      color: BoxColor,
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 25.0,
        children: [
          for (var i = 0; i < obj.length; i++)
            StaggeredGridTile.count(
              crossAxisCellCount: (i == 10 || i == 11) ? 2 : 4,
              mainAxisCellCount: obj[i] == '1' || obj[i] == '2' ? 0.4 : 1,
              child: obj[i] == '1' || obj[i] == '2'
                  ? Center(
                      child: Container(
                        height: 10.0,
                        color: BoxColor,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            objLabel[i].toString(),
                            maxLines: 1,
                            style: GoogleFonts.montserrat(
                              color: WhiteColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            decoration: BoxDecoration(
                              color: BoxColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 10.0),
                            child: Text(
                              obj[i].toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                color: WhiteColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
        ],
      ),
    );
  }
}
