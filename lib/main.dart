import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/theme/theme.dart';
import 'package:movie_app/core/values/consts.dart';
import 'package:movie_app/routes/bindings.dart';
import 'package:movie_app/routes/pages.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: baseUrl,
    anonKey: apiKey,
    authFlowType: AuthFlowType.implicit,
  );

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splash,
    theme: lightThemeData,
    darkTheme: darkThemeData,
    defaultTransition: Transition.fadeIn,
    initialBinding: InitialBinding(),
    getPages: AppPages.pages,
  ));
}
