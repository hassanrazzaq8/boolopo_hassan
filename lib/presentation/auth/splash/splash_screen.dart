import 'package:boolopo_project/core/utils/app_color.dart';
import 'package:boolopo_project/core/utils/image_constant.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_export.dart';
import 'package:flutter/material.dart';

import 'splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(
      SplashController(),
    );
    return Scaffold(
      body: Container(
        width: Get.width,
        color: AppColors.appColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              height: 200,
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                ImageConstant.appLogo,
              ),
            ),
            Text(
              "BOO--LOPO",
              style: GoogleFonts.oswald(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
