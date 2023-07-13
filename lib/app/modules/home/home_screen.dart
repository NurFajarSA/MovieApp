import 'package:flutter/material.dart';
import 'package:movie_app/core/values/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: const Placeholder(),
    );
  }
}
