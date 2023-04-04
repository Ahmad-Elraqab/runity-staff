import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class EventDescription extends StatelessWidget {
  const EventDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = context.watch<EventInformationViewModel>().eventDetail;
    final startDate =
        DateTime.parse(event!.event!.eventRegistrationStartDatetime!);
    final endDate = DateTime.parse(event.event!.eventRegistrationEndDatetime!);
    return Container(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(
            event.event!.eventName!,
            style: GoogleFonts.montserrat(
              color: WhiteColor,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'RM',
                  style: GoogleFonts.montserrat(
                    color: SecondaryColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  text: '${event.minPrice} ~ ${event.maxPrice}',
                  style: GoogleFonts.montserrat(
                    color: SecondaryColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            style: GoogleFonts.montserrat(
              color: WhiteColor,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            minVerticalPadding: 0.0,
            isThreeLine: false,
            dense: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            contentPadding: const EdgeInsets.only(left: 4.0),
            minLeadingWidth: 20.0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset('assets/images/calendar.png'),
            ),
            title: Text(
              '${startDate.day} ${MonthsPickerFull.values[startDate.month - 1].name} ${startDate.year}, ${DateFormat('EEEE').format(startDate)}',
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              DateFormat('jm').format(startDate),
              style: GoogleFonts.montserrat(
                color: SubTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            minVerticalPadding: 0.0,
            isThreeLine: false,
            dense: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            contentPadding: const EdgeInsets.only(left: 4.0),
            minLeadingWidth: 20.0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset('assets/images/calendar.png'),
            ),
            title: Text(
              '${endDate.day} ${MonthsPickerFull.values[endDate.month - 1].name} ${endDate.year}, ${DateFormat('EEEE').format(endDate)}',
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              DateFormat('jm').format(endDate),
              style: GoogleFonts.montserrat(
                color: SubTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
