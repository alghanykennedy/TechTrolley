import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtrolley/common/widgets/appbar/appbar.dart';
import 'package:techtrolley/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:techtrolley/features/shop/screens/cart/cart.dart';
import 'package:techtrolley/utils/constants/colors.dart';
import 'package:techtrolley/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: TColors.white,
                ),
          ),
        ],
      ),
      actions: [
        TCartCounterIcon(
          iconColor: TColors.white,
          onPressed: () => Get.to(() => const CartScreen()),
        )
      ],
    );
  }
}
