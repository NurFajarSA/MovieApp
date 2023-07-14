import 'dart:async';

import 'package:get/get.dart';
import 'package:movie_app/app/data/services/auth_service.dart';
import 'package:movie_app/routes/pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    launchApp();
  }

  final authService = Get.find<AuthService>();

  launchApp() {
    if (authService.isLoggedIn()) {
      Timer(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.home);
      });
    } else {
      Timer(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.signin);
      });
    }
  }
}
