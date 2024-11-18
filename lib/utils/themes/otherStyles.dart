import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/textstyle.dart';
import 'package:flutter/material.dart';

final appBarStyle = AppBarTheme(
  backgroundColor: Colors.white,
  elevation: 0,
  titleTextStyle: appBarText,
  iconTheme: const IconThemeData(
    color: IconColor,
  ),
);

const iconStyle = IconThemeData(
  color: IconColor,
  size: 24,
);