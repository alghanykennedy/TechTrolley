import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtrolley/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:techtrolley/common/widgets/success_screen/success_screen.dart';
import 'package:techtrolley/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:techtrolley/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:techtrolley/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:techtrolley/navigation_menu.dart';
import 'package:techtrolley/utils/constants/colors.dart';
import 'package:techtrolley/utils/constants/image_strings.dart';
import 'package:techtrolley/utils/constants/sizes.dart';
import 'package:techtrolley/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import 'widgets/billing_amount_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -- Coupon TextField
              const TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Payment Methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
              isEmail: false,
            ),
          ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
