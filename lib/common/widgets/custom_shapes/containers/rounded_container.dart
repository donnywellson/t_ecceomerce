import 'package:flutter/material.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.width ,
      this.height,
      this.child,
      this.margin,
      this.padding,
      this.showBorder = false,
      this.radius = TSizes.cardradiusLg,
      this.backgroundColor = TColors.white,
      this.borderColor = TColors.borderPrimary,
      });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      margin: margin,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
