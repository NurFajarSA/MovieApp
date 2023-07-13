import 'package:get/get.dart';
import 'package:movie_app/app/modules/auth/signin/signin_binding.dart';
import 'package:movie_app/app/modules/auth/signin/signin_page.dart';
import 'package:movie_app/app/modules/home/home_binding.dart';
import 'package:movie_app/app/modules/home/home_screen.dart';
import 'package:movie_app/app/modules/splash/splash_binding.dart';
import 'package:movie_app/app/modules/splash/splash_page.dart';
part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      binding: HomeBinding(),
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.splash,
      binding: SplashBinding(),
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.signin,
      binding: SigninBinding(),
      page: () => const SigninPage(),
    ),
  ];
}
