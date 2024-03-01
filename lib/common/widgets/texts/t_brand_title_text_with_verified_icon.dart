import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/texts/t_brand_title_text.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/enums.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TbrandTitleWithVerifiedIcon extends StatelessWidget {
  const TbrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TbrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs,)
      ],
    );
  }
}
