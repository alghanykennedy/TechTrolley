import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techtrolley/features/shop/screens/product_details/widgets/product_detail_img_slider.dart';
import 'package:techtrolley/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:techtrolley/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:techtrolley/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share Button
                  TRatingAndShare(),

                  /// - Price, Title, Stack & Brand
                  TProductMetaData(),

                  /// -- Attributes
                  /// -- Checkout Button
                  /// - Description
                  /// - Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
