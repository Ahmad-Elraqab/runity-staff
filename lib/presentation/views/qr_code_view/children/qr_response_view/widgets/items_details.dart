import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/view_models/qr_code_response_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = context
        .watch<QRCodeResponseViewModel>()
        .participantDetail!
        .orderDetail!
        .event!
        .items;
    return Column(
      children: [
        const SizedBox(
          height: 27.0,
        ),
        Divider(
          color: BoxColor,
          thickness: 2.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Text(
              AppLocalizations.of(context)!.items,
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            for (var i = 0; i < data!.length; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      data[i].itemName!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        color: WhiteColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    'x ${data[i].itemQuantity!}',
                    style: GoogleFonts.montserrat(
                      color: WhiteColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
