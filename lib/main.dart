import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/splash/splash_binding.dart';
import 'package:movie_app/app/modules/splash/splash_screen.dart';
import 'package:movie_app/core/theme/theme.dart';
import 'package:movie_app/route/pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splash,
    theme: lightThemeData,
    darkTheme: darkThemeData,
    defaultTransition: Transition.fade,
    initialBinding: SplashBinding(),
    getPages: AppPages.pages,
    home: SplashScreen(),
  ));
}
