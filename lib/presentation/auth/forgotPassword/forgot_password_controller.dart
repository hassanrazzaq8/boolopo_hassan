import 'package:boolopo_project/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

import '../../../core/app_export.dart';

class ForgotPasswordController extends GetxController {
  RxBool values = false.obs;
  RxString email = "".obs;
  RxString emailError = "".obs;

  bool validate() {
    RxBool isValid = true.obs;
    if (email.value.isEmpty) {
      emailError.value = "Enter email";
      isValid.value = false;
    } else if (!email.value.isEmail) {
      emailError.value = "valid email";
      isValid.value = false;
    }

    return isValid.value;
  }

  onForgot() {
    if (validate()) {
      Get.toNamed(AppRoutes.verifyYourEmailScreen);
    }
  }
}
