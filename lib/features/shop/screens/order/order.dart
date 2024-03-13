import 'package:flutter/material.dart';
import 'package:techtrolley/common/widgets/appbar/appbar.dart';
import 'package:techtrolley/utils/constants/sizes.dart';

import 'widgets/order_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Orders
        child: TOrderListItems(),
      ),
    );
  }
}
