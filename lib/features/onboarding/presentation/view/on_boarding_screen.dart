import 'package:dalel/core/database/cache/cashe_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onboarding/data/models/on_bording_model.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onboarding/presentation/widgets/onBoarding_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

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
            const SizedBox(height: 20),
            customnavbar( onTap: (){
              getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
              context.go("/login");
            },),
            OnboardingBody(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            currentIndex == onBordingData.length - 1
                ? Column(
                    children: [
                      CustomBtn(
                        text: AppStrings.createAccount,
                        onPressed: () {
                          getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
                          context.go("/signup");
                        },
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
                          context.go("/login");
                        },
                        child: const Text(
                          "Login Now",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )
                : CustomBtn(
                    text: AppStrings.next,
                    onPressed: () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
            const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
