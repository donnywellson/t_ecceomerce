import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:t_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:t_ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.primary
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBetween),
    
        // Title, Price & Size
         Expanded(
           child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TbrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: TproductTitleText(title: 'Black Sports shoes', maxLines: 1)),
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Uk 08 ', style: Theme.of(context).textTheme.bodyLarge),
                  ]
                )
              )
            ],
                               ),
         )
      ],
    );
  }
}