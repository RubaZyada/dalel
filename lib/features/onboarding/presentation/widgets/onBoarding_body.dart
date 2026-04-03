
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.Onboarding1),
              SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: _controller),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
               child: Text(
                  'Explore The history with Dalel in a smart way',
                  style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  
                ),
             ),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Text(
                  'Using our app’s history libraries you can find many historical periods',
                  style: CustomTextStyles.poppins300style16,
                  textAlign: TextAlign.center,
                  
                ),
             ),
            ],
          );
        },
      ),
    );
  }
}


