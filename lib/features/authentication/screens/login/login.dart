import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtrolley/common/styles/spacing_styles.dart';
import 'package:techtrolley/common/widgets/login_signup/form_divider.dart';
import 'package:techtrolley/common/widgets/login_signup/social_buttons.dart';
import 'package:techtrolley/features/authentication/screens/login/widgets/login_form.dart';
import 'package:techtrolley/features/authentication/screens/login/widgets/login_header.dart';
import 'package:techtrolley/utils/constants/sizes.dart';
import 'package:techtrolley/utils/constants/text_strings.dart';
import 'package:techtrolley/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              TLoginHeader(dark: dark),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
