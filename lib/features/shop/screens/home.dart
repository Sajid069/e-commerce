import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shop/common/widgets/texts/section_heading.dart';
import 'package:shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shop/utilis/constants/colors.dart';
import 'package:shop/utilis/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header -- Tutorial[section #3, video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //// -- Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //// -- Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //// -- Heading

                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  //// -- Categories
                  THomeCategories(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
