
import 'package:flutter/material.dart';
import 'package:shop/common/widgets/image_text__widgets/vertical_image_text.dart';
import 'package:shop/utilis/constants/image_strings.dart';
import 'package:shop/utilis/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: TSizes.defaultSpace),
        itemCount: 100,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
