import 'package:flutter/material.dart';
import 'package:movie_app/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HomePage')),
        body: ElevatedButton(
          onPressed: () {
            controller.signOut();
          },
          child: Text('Sign Out'),
        ));
  }
}
