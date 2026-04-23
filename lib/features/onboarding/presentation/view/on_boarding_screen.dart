import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onboarding/data/models/on_bording_model.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onboarding/presentation/widgets/onBoarding_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            customnavbar(),
            OnboardingBody(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            CustomBtn(
              text: currentIndex == onBordingData.length - 1
                  ? AppStrings.loginNow
                  : AppStrings.next,
              onPressed: () {
                if (currentIndex == onBordingData.length - 1) {
                  context.go("/signup");
                } else {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
            SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
