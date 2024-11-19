import 'package:ecommerce/utils/themes/themes.dart';
import 'package:ecommerce/views/onboard/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      theme: myAppTheme.myThemes,
      home: const SplashScreen(),
    );
  }
}
