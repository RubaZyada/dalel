import 'package:dalel/core/utils/app_assets.dart';

class OnBordingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBordingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBordingModel> onBordingData = [
  OnBordingModel(
    imagePath: Assets.Onboarding1,
    title: 'Explore The history with Dalel in a smart way',
    subTitle:
        'Using our app’s history libraries you can find many historical periods',
  ),
  OnBordingModel(
    imagePath: Assets.Onboarding2,
    title: 'From every placeon earth',
    subTitle:
        'A big variety of ancient places from all over the world',
  ),
  OnBordingModel(
    imagePath: Assets.Onboarding3,
    title: 'Using modern AI technology for better user experience',
    subTitle:
        'AI provide recommendations and helps you to continue the search journey',
  ),
];