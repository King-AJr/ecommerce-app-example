import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInputFieldTheme {
  MyInputFieldTheme._();


  static InputDecorationTheme InputFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: primaryColor,
    suffixIconColor: suffixIconColor,
    labelStyle: GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.w400, color: textColor),
    hintStyle: GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.w400, color: textColor),
    errorStyle: GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.w700, color: errorColor),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(
        width: 1,
        color: borderColor,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(
        width: 1,
        color: primaryColor,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(
        width: 1,
        color: errorColor,
      ),
    ),
  );
}
