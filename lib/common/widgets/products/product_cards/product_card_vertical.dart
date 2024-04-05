import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/styles/rounded_container.dart';
import 'package:shop/common/styles/shadows.dart';
import 'package:shop/common/widgets/icons/circular_icon.dart';
import 'package:shop/common/widgets/images/t_rounded__images.dart';
import 'package:shop/common/widgets/products/product_cards/product_price_text.dart';
import 'package:shop/common/widgets/texts/product_title_text.dart';
import 'package:shop/utilis/constants/colors.dart';
import 'package:shop/utilis/constants/image_strings.dart';
import 'package:shop/utilis/constants/sizes.dart';
import 'package:shop/utilis/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    //// Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productItemRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            //// -- Thumbnail
            ///
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //// -- Thumbnail Image
                  ///
                  TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),

                  //// -- Sale Tag
                  ///
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: TColors.black,
                            ),
                      ),
                    ),
                  ),

                  //// -- Favourite Icon Button
                  ///
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            //// -- Details
            ///
            Padding(padding: EdgeInsets.only(left: TSizes.sm)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text(
                      'Nike',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(width: TSizes.xs),
                    Icon(
                      Iconsax.verify,
                      color: TColors.primary,
                      size: TSizes.iconXs,
                    ),
                  ],
                ),
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //// -- Price
                    ///
                    const TProductPriceText(
                      price: '35.0',
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productItemRadius),
                        ),
                      ),
                      child: SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Center(
                          child: const Icon(
                            Icons.add,
                            color: TColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
