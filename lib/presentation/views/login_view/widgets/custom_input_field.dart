import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    required this.onChange,
    required this.title,
    required this.controller,
    required this.focusNode,
    this.isSecure = false,
  }) : super(key: key);

  final String? title;
  final bool? isSecure;
  final Function? onChange;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    InputBorder border = const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toString(),
          style: GoogleFonts.montserrat(
            color: WhiteColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          color: Colors.transparent,
          height: 45.0,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: TextField(
              onChanged: (_value) => {},
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              focusNode: focusNode,
              controller: controller,
              obscureText: isSecure!,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                fillColor: BoxColor,
                filled: true,
                enabledBorder: border,
                focusedBorder: border,
                border: border,
                constraints: const BoxConstraints(maxHeight: 45.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
