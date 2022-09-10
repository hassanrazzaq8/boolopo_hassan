import 'package:boolopo_project/presentation/dashboard/checkout/checkout_controller.dart';
import 'package:boolopo_project/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LazyBinding().dependencies();
  await GetStorage.init();
  runApp(const MyApp());
}

class LazyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CheckoutController());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      // home: const HomePage(),
      theme: AppTheme.themeData,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.cupertino,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        // MonthYearPickerLocalizations.delegate,
      ],
    );
  }
}
