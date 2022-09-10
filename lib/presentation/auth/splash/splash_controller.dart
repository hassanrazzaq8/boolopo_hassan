import 'package:boolopo_project/routes/app_routes.dart';
import 'package:get/get.dart';

import '/core/app_export.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.loginScreen);
    });
    super.onInit();
  }
}
