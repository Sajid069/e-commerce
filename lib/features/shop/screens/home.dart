import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shop/common/widgets/texts/section_heading.dart';
import 'package:shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shop/utilis/constants/colors.dart';
import 'package:shop/utilis/constants/image_strings.dart';
import 'package:shop/utilis/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //// -- Header
            ///
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //// -- Appbar
                  ///
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //// -- Searchbar
                  ///
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //// -- Categories
                  ///
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //// -- Heading
                        ///

                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //// -- Categories
                        ///
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //// -- Body Part
            ///
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                  TImages.banner1,
                  TImages.banner2,
                  TImages.banner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
