import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey,
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: Colors.black, fontSize: 20)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.white))));
  static ThemeData darTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade800,
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: Colors.white, fontSize: 20)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black))));
}
