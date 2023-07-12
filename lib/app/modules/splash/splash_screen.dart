import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png", width: 150, height: 150),
          const SizedBox(height: 20),
          const Text("Splash Screen",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(height: 40),
        ],
      )),
    );
  }
}
