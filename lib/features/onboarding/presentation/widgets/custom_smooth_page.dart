import 'package:dalel/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  CustomSmoothPageIndicator({super.key, required this.controller});
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        dotHeight: 8,
        dotWidth: 8,
        spacing: 8,
        activeDotColor: AppColors.deepBrown,
        dotColor: Colors.grey,
      ),
    );
  }
}
