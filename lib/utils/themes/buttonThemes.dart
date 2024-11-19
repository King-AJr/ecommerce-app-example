import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/textstyle.dart';
import 'package:flutter/material.dart';

final elevatedButtonStyle = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    padding: const EdgeInsets.all(16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    textStyle: elevatedButtonText,
  ),
);

final outlineButtonStyle = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(
      width: 1,
      color: borderColor,
    ),
    textStyle: elevatedButtonText.copyWith(color: textColor),
  ),
);
