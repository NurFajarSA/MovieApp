import 'package:get/get.dart';
import 'package:movie_app/app/modules/auth/signin/signin_binding.dart';
import 'package:movie_app/app/modules/auth/signin/signin_page.dart';
import 'package:movie_app/app/modules/auth/signup/signup_binding.dart';
import 'package:movie_app/app/modules/auth/signup/signup_page.dart';
import 'package:movie_app/app/modules/auth/signup/update_profile_page.dart';
import 'package:movie_app/app/modules/home/home_binding.dart';
import 'package:movie_app/app/modules/home/home_page.dart';
import 'package:movie_app/app/modules/splash/splash_binding.dart';
import 'package:movie_app/app/modules/splash/splash_page.dart';
part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      binding: HomeBinding(),
      page: () => const HomePage(),
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
    GetPage(
        name: Routes.signup,
        page: () => const SignupPage(),
        binding: SignupBinding()),
    GetPage(
      name: Routes.updateProfile,
      page: () => const UpdateProfilePage(),
      binding: SignupBinding(),
    ),
  ];
}
