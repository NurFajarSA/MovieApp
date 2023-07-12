import 'package:flutter/material.dart';
part 'colors.dart';
part 'font.dart';

final ThemeData lightThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
  fontFamily: 'sf-pro-display-regular',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);

final ThemeData darkThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
  fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
