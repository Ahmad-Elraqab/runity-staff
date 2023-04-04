import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioCheck extends StatelessWidget {
  const RadioCheck({
    Key? key,
    this.label,
    this.label2,
    this.isOn,
  }) : super(key: key);

  final String? label;
  final String? label2;
  final bool? isOn;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16.0,
          height: 16.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: SubTextColor,
              width: 1.0,
            ),
          ),
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              color: isOn! ? lightGreen : Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(
          width: 11.0,
        ),
        Text(
          '$label ',
          maxLines: 1,
          style: GoogleFonts.montserrat(
            color: isOn! ? lightGreen : UnCheckedColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          isOn! ? label2! : '',
          maxLines: 1,
          style: GoogleFonts.montserrat(
            color: SubTextColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
