import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/app_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "ML Examples",
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: kLightTheme,
    ),
  );
}
