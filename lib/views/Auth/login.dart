import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/textstyle.dart';
import 'package:ecommerce/utils/themes/buttonThemes.dart';
import 'package:ecommerce/views/Auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo_blue.png'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text('Welcome to E-com', style: bodyHeading16),
              const SizedBox(height: 20),
              Text('Sign in to continue', style: bodyTextSmall),
              const SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.mail_outline),
                          hintText: 'Your Email',
                          hintStyle: bodyTextSmall),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_clock_outlined),
                          hintText: 'Your Password',
                          hintStyle: bodyTextSmall),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Sign in',
                          style: elevatedButtonText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      height: 0.1,
                      color: borderColor,
                    ),
                  ),
                  Text('OR', style: bodyTextSmall),
                  const Expanded(
                    child: Divider(
                      height: 0.1,
                      color: borderColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 57,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Google.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Login with Google',
                        style: elevatedButtonText.copyWith(
                          color: textColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 57,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Facebook.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Login with Facebook',
                        style: elevatedButtonText.copyWith(
                          color: textColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password',
                  style: elevatedButtonText.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: bodyTextSmall),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const RegisterScreen());
                    },
                    child: Text(
                      'Register',
                      style: elevatedButtonText.copyWith(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
