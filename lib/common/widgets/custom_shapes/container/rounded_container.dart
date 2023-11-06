import 'package:flutter/material.dart';
import 'package:techtrolley/utils/constants/colors.dart';
import 'package:techtrolley/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.child,
    this.showBorder = false,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final bool showBorder;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
