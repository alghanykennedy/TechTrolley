import 'package:flutter/material.dart';
import 'package:techtrolley/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:techtrolley/common/widgets/custom_shapes/container/search_container.dart';
import 'package:techtrolley/common/widgets/texts/section_heading.dart';
import 'package:techtrolley/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:techtrolley/features/shop/screens/home/widgets/home_categories.dart';
import 'package:techtrolley/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
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
                        shwowActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      /// Categories
                      THomeCategories()
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
