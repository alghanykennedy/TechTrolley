import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_apps/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_apps/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_apps/utils/constants/texts.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? TImages.lightAppLogo : TImages.darkAppLogo,
          ),
        ),
        Text(
          TTexts.loginTittle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubtittle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
