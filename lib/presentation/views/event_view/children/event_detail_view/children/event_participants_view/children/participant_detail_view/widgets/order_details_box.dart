import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/view_models/participant_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderDetailsBox extends StatelessWidget {
  const OrderDetailsBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final participantDetail =
        context.watch<ParticipantDetailViewModel>().participantDetail;
    return Container(
      color: BoxColor,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...participantDetail!.orderDetail!.event!.items!
                  .map(
                    (e) => Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          color: SecondaryColor,
                          width: 5.0,
                          height: 50.0,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          '${e.itemQuantity}x',
                          style: GoogleFonts.montserrat(
                            color: WhiteColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 14.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            e.itemName.toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: GoogleFonts.montserrat(
                              color: WhiteColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          e.itemPrice.toString(),
                          style: GoogleFonts.montserrat(
                            color: WhiteColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 14.0),
                      ],
                    ),
                  )
                  .toList(),
              const SizedBox(
                height: 23.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 52.0, right: 14.0, bottom: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.distance,
                      style: GoogleFonts.montserrat(
                        color: SubTextColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${participantDetail.distance ?? 0.00} KM',
                          style: GoogleFonts.montserrat(
                            color: WhiteColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Text(
                          '10.00',
                          style: GoogleFonts.montserrat(
                            color: WhiteColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
