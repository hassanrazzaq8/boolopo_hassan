import 'package:boolopo_project/routes/app_routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../core/utils/helper.dart';

class CreateNewPasswordController extends GetxController {
  RxString password = "".obs;
  RxString passwordError = "".obs;
  RxString conpass = "".obs;
  RxString conpassError = "".obs;

  RxBool obsurepass = true.obs;
  RxBool obsureconpass = true.obs;

  bool validate() {
    RxBool isValid = true.obs;

    if (password.value.isEmpty) {
      passwordError.value = "Enter password";
      isValid.value = false;
    } else if (!Helper.isPassword(password.value)) {
      passwordError.value = "please enter max 6 character";
      isValid.value = false;
    }
    if (conpass.value != password.value) {
      conpassError.value = "Passwrd does not match";
      isValid.value = false;
    }

    return isValid.value;
  }

  onnewPass() {
    if (validate()) {
      Get.offAllNamed(AppRoutes.loginScreen);
    }
  }
}
