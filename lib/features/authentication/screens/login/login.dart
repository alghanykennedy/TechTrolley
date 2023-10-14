import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_apps/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce_apps/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce_apps/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_ecommerce_apps/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ecommerce_apps/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ecommerce_apps/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_apps/utils/helpers/helper_function.dart';

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
              TLoginDivider(dark: dark),
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
