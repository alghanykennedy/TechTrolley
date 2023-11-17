import 'package:flutter/material.dart';
import 'package:techtrolley/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:techtrolley/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:techtrolley/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                width: 400,
                height: 400,
                padding: 0,
                radius: 400,
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                width: 400,
                height: 400,
                padding: 0,
                radius: 400,
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
