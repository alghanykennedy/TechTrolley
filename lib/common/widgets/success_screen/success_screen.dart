import 'package:flutter/material.dart';
import 'package:techtrolley/common/styles/spacing_styles.dart';
import 'package:techtrolley/utils/constants/sizes.dart';
import 'package:techtrolley/utils/constants/text_strings.dart';
import 'package:techtrolley/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
    required this.isEmail,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;
  final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(
                  image,
                ),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Tittle & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(
                    TTexts.tContinue,
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              isEmail == false
                  ? const SizedBox()
                  : SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: onPressed,
                        child: const Text(
                          TTexts.resendEmail,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
