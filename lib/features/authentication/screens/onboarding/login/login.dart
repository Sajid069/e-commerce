import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/styles/spacing_styles.dart';
import 'package:shop/features/authentication/screens/onboarding/login/widgets/form_divider.dart';
import 'package:shop/features/authentication/screens/onboarding/login/widgets/login_form.dart';
import 'package:shop/features/authentication/screens/onboarding/login/widgets/login_header.dart';
import 'package:shop/features/authentication/screens/onboarding/login/widgets/social_buttons.dart';
import 'package:shop/utilis/constants/sizes.dart';
import 'package:shop/utilis/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              const TLoginForm(),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}