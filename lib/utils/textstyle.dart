import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// FontWeight.w100: 'Thin',
// FontWeight.w200: 'ExtraLight',
// FontWeight.w300: 'Light',
// FontWeight.w400: 'Regular',
// FontWeight.w500: 'Medium',
// FontWeight.w600: 'SemiBold',
// FontWeight.w700: 'Bold',
// FontWeight.w800: 'ExtraBold',
// FontWeight.w900: 'Black',

TextStyle elevatedButtonText = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

TextStyle appBarText = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: appBarTextColor,
);

TextStyle onboardingText = GoogleFonts.poppins(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: textColor,
);

TextStyle onboardingButtonText = GoogleFonts.montserrat(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: primaryColor,
);
