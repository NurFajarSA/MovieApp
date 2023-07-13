import 'dart:async';

import 'package:get/get.dart';
import 'package:movie_app/routes/pages.dart';

class SplashController extends GetxController {
  SplashController();

  @override
  void onInit() {
    super.onInit();
    launchHome();
  }

  launchHome() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.signin);
    });
  }
}
