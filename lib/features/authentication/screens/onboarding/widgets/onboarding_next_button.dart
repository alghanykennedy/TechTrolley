import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_apps/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce_apps/utils/constants/colors.dart';
import 'package:flutter_ecommerce_apps/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_apps/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_apps/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.dark,
        ),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
