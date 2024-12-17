import 'package:apk_i_1/theme/appbar_theme.dart';
import 'package:apk_i_1/theme/elevated_button_theme.dart';
import 'package:apk_i_1/theme/input_decoration_theme.dart';
import 'package:apk_i_1/theme/outlined_button_theme.dart';
import 'package:apk_i_1/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ThemeDesinge {
  ThemeDesinge._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blueAccent,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevetedButtonTheme.lightElevetedButtonTheme,
    appBarTheme: TAppbarTheme.lightAppbarTheme,
    inputDecorationTheme: TInputDecorationTheme.lightInputDecotation,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
  );
}
