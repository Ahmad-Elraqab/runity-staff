import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/view_models/participant_detail_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/view_models/participant_detail_widget_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/widgets/order_details_box.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/widgets/participant_detail_shimmer.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/widgets/participant_details.dart';
import 'package:flutter/material.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParticipantDetailView extends StatefulWidget {
  const ParticipantDetailView({super.key});

  @override
  State<ParticipantDetailView> createState() => _ParticipantDetailViewState();
}

class _ParticipantDetailViewState extends State<ParticipantDetailView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<ParticipantDetailWidgetViewModel,
          ParticipantDetailViewModel>(
        builder: (context, value, value2, child) => Container(
          color: PrimaryColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: value.isLoading
              ? const ParticipantDetailShimmer()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 54.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      margin: const EdgeInsets.only(bottom: 37.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => context.router.pop(),
                            child: Row(
                              children: [
                                Image.asset('assets/images/arrowBack.png'),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  value2
                                      .participantDetail!.participant!.userName
                                      .toString(),
                                  style: GoogleFonts.montserrat(
                                    color: WhiteColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                AppLocalizations.of(context)!.orderDetails,
                                style: GoogleFonts.montserrat(
                                  color: WhiteColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const OrderDetailsBox(),
                            const SizedBox(height: 20.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.totalPayment,
                                    style: GoogleFonts.montserrat(
                                      color: WhiteColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(),
                                  ),
                                  Text(
                                    value2.participantDetail!.orderDetail!
                                            .totalPayment ??
                                        "0.00",
                                    style: GoogleFonts.montserrat(
                                      color: WhiteColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 47.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .participantDetails,
                                style: GoogleFonts.montserrat(
                                  color: WhiteColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            const ParticipantDetails(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
