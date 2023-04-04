import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.title,
    this.onPress,
  }) : super(key: key);

  final String? title;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () => {onPress!()},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(WhiteColor),
              fixedSize: MaterialStateProperty.all(
                const Size(
                  double.infinity,
                  70.0,
                ),
              ),
            ),
            child: Text(
              title.toString(),
              style: GoogleFonts.montserrat(
                color: TextColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
