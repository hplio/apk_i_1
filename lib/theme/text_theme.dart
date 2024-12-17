import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTextTheme = const TextTheme().copyWith(
    bodyLarge: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: TColor.textPrimer,
    ),
    bodySmall: TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: TColor.textPrimer.withOpacity(0.5),
    ),
    bodyMedium: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: TColor.textPrimer,
    ),
    headlineLarge: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: TColor.textPrimer,
    ),
    headlineSmall: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: TColor.textPrimer,
    ),
    headlineMedium: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: TColor.textPrimer,
    ),
    titleLarge: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: TColor.textPrimer,
    ),
    titleMedium: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: TColor.textPrimer,
    ),
    titleSmall: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: TColor.textPrimer,
    ),
    labelLarge: const TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: TColor.textPrimer,
    ),
    labelMedium: TextStyle(
      // fontFamily: 'NunitoSans',
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: TColor.textPrimer.withOpacity(0.5),
    ),
  );
}
