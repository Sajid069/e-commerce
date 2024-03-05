import 'package:flutter/material.dart';
import 'package:shop/utilis/constants/image_strings.dart';
import 'package:shop/utilis/constants/sizes.dart';
import 'package:shop/utilis/constants/text_strings.dart';
import 'package:shop/utilis/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: THelperFunctions.screenWidth() * 0.8,
                    height: THelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(TImages.onBoardingImage1),
                  ),
                  Text(TTexts.onBoardingTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: Tsizes.spaceBtwItems),
                  Text(TTexts.onBoardingSubtitle1,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
