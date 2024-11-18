import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/themes/buttonThemes.dart';
import 'package:ecommerce/utils/themes/inputfield_theme.dart';
import 'package:ecommerce/utils/themes/otherStyles.dart';
import 'package:flutter/material.dart';

class myAppTheme {
  myAppTheme._();

  static ThemeData myThemes = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    elevatedButtonTheme: elevatedButtonStyle,
    inputDecorationTheme: MyInputFieldTheme.InputFieldTheme,
    appBarTheme: appBarStyle,
    iconTheme: iconStyle,
  );
}
