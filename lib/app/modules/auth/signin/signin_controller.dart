import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/data/services/auth_service.dart';

class SigninController extends GetxController {
  final AuthService authService = Get.find<AuthService>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  isValid() {
    return formKey.currentState!.validate();
  }

  isValidEmail(value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    } else if (!GetUtils.isEmail(value)) {
      return "Email is not valid";
    }
    return null;
  }

  signIn() {
    if (isValid()) {
      _signIn(email: emailController.text, password: passwordController.text);
    }
  }

  Future<void> _signIn(
      {required String email, required String password}) async {
    try {
      await authService.signIn(email: email, password: password);
      if (authService.isLoggedIn()) {
        Get.offAllNamed('/home');
        Get.snackbar(
          "Success",
          "Sign in successful",
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          "Error",
          "Sign in failed",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
