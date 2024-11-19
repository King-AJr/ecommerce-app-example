import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/views/onboard/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void nextScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    Get.offAll(() => const OnboardingScreen());
  }

  @override
  void initState() {
    super.initState();
    nextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset('assets/images/logo_white.png'),
      ),
    );
  }
}
