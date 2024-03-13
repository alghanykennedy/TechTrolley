import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtrolley/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:techtrolley/common/widgets/custom_shapes/container/search_container.dart';
import 'package:techtrolley/common/widgets/layouts/grid_layout.dart';
import 'package:techtrolley/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:techtrolley/common/widgets/texts/section_heading.dart';
import 'package:techtrolley/features/shop/screens/all_products/all_products.dart';
import 'package:techtrolley/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:techtrolley/features/shop/screens/home/widgets/home_categories.dart';
import 'package:techtrolley/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:techtrolley/utils/constants/image_strings.dart';
import 'package:techtrolley/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar --
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// -- Searchbar --
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Categories --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(
                TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// -- Promo Slider
                  const TPromoSlider(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),

                  /// -- Popular Products
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
