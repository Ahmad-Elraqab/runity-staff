import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/base/app/config/global_keys.dart';
import 'package:event_app/base/interceptors/custom_dio_errors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorAction {
  static void excute(RestException error) {
    var snackBar = SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        color: BoxColor,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        width: GlobalKeys.messengerKey.currentContext!.size!.width - 30,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            error.responseMessage,
            style: GoogleFonts.montserrat(
                fontSize: 12, color: WhiteColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );

    GlobalKeys.messengerKey.currentState!.showSnackBar(snackBar);
  }
}

class ErrorUIAction {
  static void excute(String error) {
    var snackBar = SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        color: BoxColor,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        width: GlobalKeys.messengerKey.currentContext!.size!.width - 30,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            error,
            style: GoogleFonts.montserrat(
                fontSize: 12, color: WhiteColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );

    GlobalKeys.messengerKey.currentState!.showSnackBar(snackBar);
  }
}
