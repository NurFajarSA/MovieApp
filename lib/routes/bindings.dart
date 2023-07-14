import 'package:get/get.dart';
import 'package:movie_app/app/data/services/auth_service.dart';
import 'package:movie_app/app/data/services/database_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    final client = Supabase.instance.client;
    Get.put<DatabaseSevice>(DatabaseSevice(client: client));
    Get.put<AuthService>(AuthService(client: client));
  }
}
