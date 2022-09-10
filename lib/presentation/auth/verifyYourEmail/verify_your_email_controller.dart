import 'package:boolopo_project/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_export.dart';

class VerifyYourEmailController extends GetxController {
  final TextEditingController phone = TextEditingController();
  // final TextEditingController pin = TextEditingController();

  RxString currentText = "".obs;
  RxInt startTimer = 30.obs;
  RxString pinError = ''.obs;
  RxString pin = ''.obs;

  bool valid() {
    RxBool isValid = true.obs;
    pinError.value = '';
    if (pin.isEmpty) {
      pinError.value = "Enter OTP";
      isValid.value = false;
    }
    return isValid.value;
  }

  onVerify() {
    if (valid()) {
      Get.toNamed(AppRoutes.createNewPasswordScreen);
    }
  }
}
