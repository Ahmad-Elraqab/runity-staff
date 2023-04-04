import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/widgets/radio_check.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParticipantsListItem extends StatelessWidget {
  const ParticipantsListItem({
    required this.participant,
    Key? key,
  }) : super(key: key);

  final ParticipantEntity participant;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          participant.userName!.toString(),
          maxLines: 1,
          style: GoogleFonts.montserrat(
            color: WhiteColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        for (var i in participant.items!)
          Column(
            children: [
              Text(
                '${i.itemName!} x${i.itemQuantity}',
                maxLines: 1,
                style: GoogleFonts.montserrat(
                  color: SubTextColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
            ],
          ),
        const SizedBox(
          height: 10.0,
        ),
        Divider(
          color: BoxColor,
          thickness: 2.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        RadioCheck(
          isOn: participant.checkinDatetime != null ? true : false,
          label: AppLocalizations.of(context)!.checkedIn,
          label2: participant.checkinDatetime,
        ),
        const SizedBox(height: 10.0),
        RadioCheck(
          isOn: participant.collectedDatetime != null ? true : false,
          label: AppLocalizations.of(context)!.collectedItems,
          label2: participant.collectedDatetime,
        ),
      ],
    );
  }
}
