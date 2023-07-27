import 'package:flowers_app/app/ui/utils/colors_app.dart';
import 'package:flutter/material.dart';

abstract class ThemeApp {
  static ThemeData themeData = ThemeData(
    primaryColor: ColorsApp.primary,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 32,
        color: ColorsApp.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: ColorsApp.white,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: ColorsApp.secundary,
      ),
    ),
  );
}
