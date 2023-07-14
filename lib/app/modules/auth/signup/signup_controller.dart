import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/data/services/auth_service.dart';
import 'package:movie_app/routes/pages.dart';

class SignupController extends GetxController {
  final authService = Get.find<AuthService>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullnameController = TextEditingController();
  final ageController = TextEditingController();
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

  signUp() {
    if (isValid()) {
      _signUp(email: emailController.text, password: passwordController.text);
    }
  }

  Future<void> _signUp(
      {required String email, required String password}) async {
    try {
      await authService.signUp(email: email, password: password);
      if (authService.isLoggedIn()) {
        Get.offAllNamed(Routes.updateProfile);
        Get.snackbar(
          "Success",
          "Sign up successful",
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          "Error",
          "Sign up failed",
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

  updateProfile() {
    if (isValid()) {
      _updateProfile(
          fullname: fullnameController.text,
          age: int.parse(ageController.text));
    }
  }

  _updateProfile({required String fullname, required int age}) async {
    try {
      await authService.updateProfile(fullname: fullname, age: age);
      Get.offAllNamed(Routes.home);
      Get.snackbar(
        "Success",
        "Update profile successful",
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  toSignin() {
    Get.back();
  }
}
