import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:shop/utilis/constants/colors.dart';
import 'package:shop/utilis/device/device_utility.dart';

import '../../../../../utilis/constants/sizes.dart';
import '../../../../../utilis/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: Tsizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark? TColors.primaryColor : Colors.black,
        ),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
