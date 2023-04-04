import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {context.router.pop()},
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(
          Size(double.infinity, 70.0),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
        ),
        backgroundColor: const MaterialStatePropertyAll(WhiteColor),
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
        child: Text(
          textWidthBasis: TextWidthBasis.longestLine,
          // AppLocalizations.of(context)!.done,
          AppLocalizations.of(context)!.collected,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.montserrat(
            color: PrimaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
