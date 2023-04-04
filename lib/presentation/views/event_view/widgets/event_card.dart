import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    this.event,
    this.isDate = true,
    required this.onPressed,
  }) : super(key: key);

  final bool? isDate;
  final Function? onPressed;
  final EventEntity? event;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ElevatedButton(
        onPressed: () => onPressed!(),
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          fixedSize: const MaterialStatePropertyAll(
            Size(double.maxFinite, 80.0),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(lightPurple),
        ),
        child: Align(
          alignment: Alignment.center,
          child: ListTile(
            title: Text(
              event!.eventName!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              event!.eventStartDatetime!,
              style: GoogleFonts.montserrat(
                color: SubTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: !isDate!
                ? Image.asset('assets/images/arrowRight.png')
                // ignore: unrelated_type_equality_checks
                : (DateTime.parse(event!.eventStartDatetime!).day ==
                            DateTime.now().day) &&
                        (DateTime.parse(event!.eventStartDatetime!).month ==
                            DateTime.now().month)
                    ? Text(
                        AppLocalizations.of(context)!.today,
                        style: GoogleFonts.montserrat(
                          color: TodayColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : const SizedBox(),
            leading: Container(
              decoration: BoxDecoration(
                color: WhiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 45.0,
              height: 45.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    DateTime.parse(event!.eventStartDatetime!).day.toString(),
                    style: GoogleFonts.montserrat(
                      color: DateTColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    MonthsPicker
                        .values[
                            DateTime.parse(event!.eventStartDatetime!).month -
                                1]
                        .name,
                    style: GoogleFonts.montserrat(
                      color: DateColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
