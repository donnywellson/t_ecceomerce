import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:t_ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/enums.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
    
  });

  final bool showBorder;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
                width: TSizes.spaceBetween / 2),
    
            // -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const TbrandTitleWithVerifiedIcon(
                      title: "Nike",
                      brandTextSize: TextSizes.large),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}