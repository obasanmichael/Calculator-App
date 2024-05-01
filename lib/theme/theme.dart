import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: Colors.grey.shade300,
        primary: Colors.grey.shade800,
        secondary: Color(0xFF757575),
        tertiary: Color(0xFFB71C1C)));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
      primary: Colors.grey.shade600,
      secondary: Colors.grey.shade300,
      tertiary: Colors.red.shade700
    ));

