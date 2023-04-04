import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () =>
                context.read<QrCodeWidgetViewModel>().isFirstTab = true,
            child: Container(
              width: 118.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 5.0,
                    color: context.watch<QrCodeWidgetViewModel>().isFirstTab
                        ? SecondaryColor
                        : Colors.transparent,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.checkIn,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: context.watch<QrCodeWidgetViewModel>().isFirstTab
                        ? SecondaryColor
                        : WhiteColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () =>
                context.read<QrCodeWidgetViewModel>().isFirstTab = false,
            child: Container(
              width: 118.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 5.0,
                    color: !context.watch<QrCodeWidgetViewModel>().isFirstTab
                        ? SecondaryColor
                        : Colors.transparent,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.collectItem,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: !context.watch<QrCodeWidgetViewModel>().isFirstTab
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
      ),
    );
  }
}
