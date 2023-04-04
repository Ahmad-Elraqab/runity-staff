import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/view_models/qr_code_response_widget_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ResponseBox extends StatelessWidget {
  const ResponseBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = context.watch<QRCodeResponseWidgetViewModel>();
    return Column(
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            // color: lightGreen,
            color: data.isSuccess! ? lightGreen : DateColor,
            borderRadius: BorderRadius.circular(50.0),
            image: DecorationImage(
              // image: AssetImage('assets/images/success.png'),
              image: data.isSuccess!
                  ? const AssetImage('assets/images/success.png')
                  : const AssetImage('assets/images/fails.png'),
            ),
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Text(
          textWidthBasis: TextWidthBasis.longestLine,
          data.qRResponse!.eventName.toString(),
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.montserrat(
            color: WhiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 24.0,
          ),
        ),
        const SizedBox(
          height: 21.0,
        ),
        Text(
          textWidthBasis: TextWidthBasis.longestLine,
          data.qRResponseType == QRResponseType.CheckIn
              ? data.isSuccess!
                  ? AppLocalizations.of(context)!.checkedIn
                  : AppLocalizations.of(context)!.eventExpired
              : data.isSuccess!
                  ? AppLocalizations.of(context)!.collectItems
                  : AppLocalizations.of(context)!.itemsCollected,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.montserrat(
            // color: lightGreen,
            color: data.isSuccess! ? lightGreen : DateColor,
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          textWidthBasis: TextWidthBasis.longestLine,
          data.qRResponseType == QRResponseType.CheckIn
              ? data.qRResponse!.checkInDatetime.toString()
              : data.qRResponse!.collectedDatetime.toString(),
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.montserrat(
            color: SubTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          textWidthBasis: TextWidthBasis.longestLine,
          data.qRResponse!.eventName.toString(),
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.montserrat(
            color: WhiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
