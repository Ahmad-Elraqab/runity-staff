import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/view_models/event_detail_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class AllParticipantButton extends StatelessWidget {
  const AllParticipantButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {
        context.router.push(
          EventParticipantsRouter(
            id: context.read<EventDetailWidgetViewModel>().id,
          ),
        )
      },
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 20.0, horizontal: 18)),
        backgroundColor: const MaterialStatePropertyAll(lightPurple),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textWidthBasis: TextWidthBasis.longestLine,
              AppLocalizations.of(context)!.viewAllParticipants,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
            Image.asset('assets/images/arrowRight.png')
          ],
        ),
      ),
    );
  }
}
