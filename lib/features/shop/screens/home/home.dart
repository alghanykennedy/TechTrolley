import 'package:flutter/material.dart';
import 'package:techtrolley/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:techtrolley/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: THomeAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
