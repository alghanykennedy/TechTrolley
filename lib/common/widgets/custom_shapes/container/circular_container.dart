import 'package:flutter/material.dart';
import 'package:techtrolley/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    Key? key,
    this.width,
    this.height,
    required this.radius,
    required this.padding,
    this.child,
    required this.backgroundColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 400,
      height: height ?? 400,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: backgroundColor ?? TColors.white,
      ),
      child: child,
    );
  }
}
