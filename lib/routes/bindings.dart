import 'package:get/get.dart';
import 'package:movie_app/app/data/services/auth_service.dart';
import 'package:movie_app/app/data/services/database_service.dart';
import 'package:movie_app/core/values/consts.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<DatabaseSevice>(DatabaseSevice(client: client));
    Get.put<AuthService>(AuthService(client: client));
  }
}
