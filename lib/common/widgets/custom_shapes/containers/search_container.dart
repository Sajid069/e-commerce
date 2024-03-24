import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/utilis/constants/colors.dart';
import 'package:shop/utilis/constants/sizes.dart';
import 'package:shop/utilis/device/device_utility.dart';
import 'package:shop/utilis/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(
          TSizes.defaultSpace,
        ),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: dark ? TColors.dark : TColors.light,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(
                    color: TColors.grey,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: showBackground
                    ? dark
                        ? TColors.light
                        : TColors.dark
                    : Colors.transparent,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
