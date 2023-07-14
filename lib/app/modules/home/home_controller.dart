import 'package:get/get.dart';
import 'package:movie_app/app/data/services/auth_service.dart';
import 'package:movie_app/routes/pages.dart';

class HomeController extends GetxController {

  final authService = Get.find<AuthService>();

  signOut() {
    authService.signOut();
    if (!authService.isLoggedIn()) {
      Get.offAllNamed(Routes.signin);
      Get.snackbar(
        "Success",
        "Sign out successful",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
