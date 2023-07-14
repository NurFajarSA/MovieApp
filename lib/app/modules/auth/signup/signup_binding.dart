import 'package:get/get.dart';
import 'package:movie_app/app/modules/auth/signup/signup_controller.dart';

class SignupBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SignupController());
  }
}
