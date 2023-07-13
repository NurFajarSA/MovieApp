import 'package:flutter/material.dart';
part 'colors.dart';
part 'font.dart';

final ThemeData lightThemeData = ThemeData.light().copyWith(
  primaryColor: Colors.blueAccent,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
  primaryColor: Colors.blueAccent,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
