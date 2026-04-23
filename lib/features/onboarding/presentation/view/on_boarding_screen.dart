import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onboarding/presentation/widgets/onBoarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            customnavbar(),
            OnboardingBody(),
            CustomBtn(text: AppStrings.next),
            SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}

