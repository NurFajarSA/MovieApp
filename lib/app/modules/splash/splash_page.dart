import 'package:flutter/material.dart';
import 'package:movie_app/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/theme/theme.dart';
import 'package:movie_app/core/values/consts.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPrimaryColorStep7,
      body: Stack(children: [
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(height: 20),
            const Text(appName, style: titleStyle),
            const SizedBox(height: 40),
          ],
        )),
        Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Text("Developed by \n$developerName",
                textAlign: TextAlign.center,
                style: titleStyle.copyWith(
                    fontSize: 13,
                    color: darkPrimaryColorStep12.withOpacity(0.8)))),
      ]),
    );
  }
}
