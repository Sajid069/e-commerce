import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:shop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shop/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shop/utilis/constants/image_strings.dart';
import 'package:shop/utilis/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubtitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubtitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubtitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
