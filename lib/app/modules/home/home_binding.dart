import 'package:get/get.dart';
import 'package:movie_app/app/data/providers/api.dart';
import 'package:movie_app/app/modules/home/home_controller.dart';
import 'package:movie_app/app/modules/home/home_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
