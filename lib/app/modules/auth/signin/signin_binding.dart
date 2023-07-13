import 'package:get/get.dart';
import 'package:movie_app/app/modules/auth/signin/signin_controller.dart';

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(() => SigninController());
  }
}
