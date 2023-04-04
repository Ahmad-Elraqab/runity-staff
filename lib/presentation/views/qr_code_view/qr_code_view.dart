import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/qr_code_view/widgets/tab_bar_header.dart';
import 'package:event_app/presentation/views/qr_code_view/widgets/tab_bar_view_body.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QRCodeView extends StatefulWidget {
  const QRCodeView({super.key});

  @override
  State<QRCodeView> createState() => _QRCodeViewState();
}

class _QRCodeViewState extends State<QRCodeView> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(
    //   const Duration(milliseconds: 3000),
    //   () => context.router.push(const ResponseRouter()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<QrCodeWidgetViewModel, QRCodeViewModel>(
        builder: (context, value, value2, child) => Container(
          color: PrimaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 54.0,
              ),
              InkWell(
                onTap: () => context.router.pop(),
                child: Row(
                  children: [
                    Image.asset('assets/images/arrowBack.png'),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      AppLocalizations.of(context)!.qRCode,
                      style: GoogleFonts.montserrat(
                        color: WhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              const TabBarHeader(),
              const TabBarViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
