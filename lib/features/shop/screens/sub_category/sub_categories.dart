import 'package:flutter/material.dart';
import 'package:techtrolley/common/widgets/appbar/appbar.dart';
import 'package:techtrolley/common/widgets/images/t_rounded_image.dart';
import 'package:techtrolley/common/widgets/texts/section_heading.dart';
import 'package:techtrolley/utils/constants/image_strings.dart';
import 'package:techtrolley/utils/constants/sizes.dart';

import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Banner
            const TRoundedImage(
              width: double.infinity,
              imageUrl: TImages.banner3,
              applyImageRadius: true,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Sub-Categories
            Column(
              children: [
                /// Heading
                TSectionHeading(
                  title: 'Sport Shirts',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal()),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
