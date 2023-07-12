import 'package:get/get.dart';
import 'package:movie_app/app/modules/home/home_screen.dart';
import 'package:movie_app/app/modules/splash/splash_screen.dart';
part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
    ),
    // GetPage(
    //   name: Routes.login,
    //   page: () => LoginPage(),
    // ),
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
    ),
  ];
}
