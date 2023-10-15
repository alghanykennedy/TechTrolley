import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techtrolley/common/widgets/login_signup/form_divider.dart';
import 'package:techtrolley/common/widgets/login_signup/social_buttons.dart';
import 'package:techtrolley/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:techtrolley/utils/constants/colors.dart';
import 'package:techtrolley/utils/constants/sizes.dart';
import 'package:techtrolley/utils/constants/text_strings.dart';
import 'package:techtrolley/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Iconsax.arrow_left,
            color: dark ? TColors.white : TColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Tittle
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Form
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Social Buttons
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
