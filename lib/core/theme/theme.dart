import 'package:flutter/material.dart';
import 'package:get/get.dart';
part 'colors.dart';
part 'font.dart';

final ThemeData lightThemeData = ThemeData.light().copyWith(
  primaryColor: Colors.blueAccent,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
  primaryColor: MyColor.primaryColor(12),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
  ),
);
