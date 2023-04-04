import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/view_models/event_participants_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabBarHeader extends StatelessWidget {
  const TabBarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = [
      AppLocalizations.of(context)!.all,
      AppLocalizations.of(context)!.toCheckIn,
      AppLocalizations.of(context)!.toCollect
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var i = 0; i < list.length; i++)
          InkWell(
            onTap: () =>
                context.read<EventParticipantsWidgetViewModel>().tab = i,
            child: Container(
              width: 118.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 5.0,
                    color:
                        context.watch<EventParticipantsWidgetViewModel>().tab ==
                                i
                            ? SecondaryColor
                            : Colors.transparent,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Center(
                child: Text(
                  list[i].toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color:
                        context.watch<EventParticipantsWidgetViewModel>().tab ==
                                i
                            ? SecondaryColor
                            : WhiteColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
