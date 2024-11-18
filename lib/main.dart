import 'package:flutter/material.dart';


void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      //theme: myAppTheme.myThemes,
      initialRoute: '/intro',
      // routes: {
      //   '/intro': (context) => const IntroScreen(),
      //   '/onboarding': (context) => const OnboardingScreen(),
      //   '/BottomNavBar': (context) => BottomNavBar()
      // },
    );
  }
}