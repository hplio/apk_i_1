import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();
  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        elevation: 0,
        side: const BorderSide(
          color: TColor.secondery,
        ),
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: TColor.secondery,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0)),
  );
}
