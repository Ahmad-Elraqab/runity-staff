import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/view_models/qr_code_response_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/view_models/qr_code_response_widget_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/widgets/items_details._shimmer.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/widgets/items_details.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/widgets/response_box.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/widgets/participant_detail_button.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/widgets/submit_button.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class QRCodeResponseView extends StatefulWidget {
  const QRCodeResponseView({super.key});

  @override
  State<QRCodeResponseView> createState() => _QRCodeResponseViewState();
}

class _QRCodeResponseViewState extends State<QRCodeResponseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<QRCodeResponseWidgetViewModel, QRCodeResponseViewModel>(
        builder: (context, value, value2, child) => Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          color: PrimaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 54.0,
              ),
              Row(
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
              Container(
                margin: const EdgeInsets.only(top: 44.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 26.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: lightPurple,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    const ResponseBox(),
                    value.qRResponseType == QRResponseType.CheckIn
                        ? const SizedBox()
                        : value.loading!
                            ? const ItemsDetailsShimmer()
                            : const ItemsDetails(),
                  ],
                ),
              ),
              const SizedBox(
                height: 23.0,
              ),
              const ParticipantDetailButton(),
              const Expanded(child: SizedBox()),
              const SubmitButton(),
              const SizedBox(
                height: 38.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
