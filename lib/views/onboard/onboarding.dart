import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/textstyle.dart';
import 'package:ecommerce/views/Auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();

  final num pageCounter = 0;
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: IntroductionScreen(
          globalHeader: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Get.offAll(() => const LoginScreen());
                },
                child: Text('Skip', style: onboardingButtonText),
              ),
            ],
          ),
          globalBackgroundColor: Colors.white,
          pages: [
            PageViewModel(
              title: '',
              bodyWidget: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/onboarding_one.png'),
                          width: 240,
                          height: 300,
                        ),
                      ],
                    ),
                    Text(
                      'Choose Product',
                      style: onboardingButtonText,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PageViewModel(
              title: '',
              bodyWidget: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                color: bgColor,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/onboarding_two.png'),
                          width: 240,
                          height: 300,
                        ),
                      ],
                    ),
                    Text(
                      'Make Payment',
                      style: onboardingButtonText,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PageViewModel(
              title: '',
              bodyWidget: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image:
                              AssetImage('assets/images/onboarding_three.png'),
                          width: 240,
                          height: 300,
                        ),
                      ],
                    ),
                    Text(
                      'Get Your Order',
                      style: onboardingButtonText,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
          showDoneButton: true,
          done: Text('Get Started', style: onboardingButtonText),
          next: Text('Next', style: onboardingButtonText),
          back: Text('Prev', style: onboardingButtonText),
          dotsDecorator: DotsDecorator(
            color: borderColor,
            activeColor: primaryColor,
            size: const Size.square(10),
            activeSize: const Size(22, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          showNextButton: true,
          showBackButton: true,
          onDone: () {
            Get.offAll(() => const LoginScreen());
          },
        ),
      ),
    );
  }
}
