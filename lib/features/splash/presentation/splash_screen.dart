// ignore_for_file: use_build_context_synchronously

import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    delayedNavigation(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}

void delayedNavigation(context) {
  Future.delayed(const Duration(seconds: 3), () {
    GoRouter.of(context).pushReplacement ('/onboarding');
  });
}
