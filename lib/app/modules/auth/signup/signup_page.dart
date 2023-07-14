import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/auth/signup/signup_controller.dart';
import 'package:movie_app/app/widgets/my_textfield.dart';
import 'package:movie_app/core/theme/theme.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/auth_bg.png",
          width: MediaQuery.sizeOf(context).width,
          fit: BoxFit.cover,
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.sizeOf(context).width - 40,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(children: [
              Text("Sign Up", style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 20),
              Form(
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    MyTextfield(
                      label: "Email",
                      hint: "username@mail.com",
                      isMandatory: true,
                      background: MyColor.neutralColor(3),
                      controller: controller.emailController,
                      validator: (val) => controller.isValidEmail(val),
                    ),
                    const SizedBox(height: 20),
                    MyTextfield(
                      label: "Password",
                      hint: "Enter your password",
                      obscureText: true,
                      isMandatory: true,
                      background: MyColor.neutralColor(3),
                      controller: controller.passwordController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.signUp();
                },
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(MediaQuery.sizeOf(context).width - 40, 50),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    foregroundColor: MaterialStateColor.resolveWith(
                        (states) => MyColor.neutralColor(1)),
                    backgroundColor: MaterialStateProperty.all(
                      MyColor.primaryColor(9),
                    )),
                child: const Text("Sign Up"),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have an account? ",
                      style: Theme.of(context).textTheme.bodySmall!),
                  GestureDetector(
                    onTap: () {
                      controller.toSignin();
                    },
                    child: Text("Sign in",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: MyColor.primaryColor(11),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    ));
  }
}
