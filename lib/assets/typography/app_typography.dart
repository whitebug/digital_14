import 'package:digital_14/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class AppTypography {
  static TextStyle body = const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle header = const TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle title = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle titleBold = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle cardTitleBold = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle cardBody = const TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
    color: appBarBackground,
  );
}
