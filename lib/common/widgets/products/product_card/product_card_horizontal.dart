import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:t_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:t_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:t_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:t_ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.softGrey,
      ),
      child: Row(
        children: [
          // Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // -- Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),
                ),

                // Sale Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                // Favotite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TproductTitleText(
                      title: 'Green Nike Half Sleeves Shirt',
                      smallsize: true),
                  SizedBox(
                    height: TSizes.spaceBetween / 2,
                  ),
                  TbrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child:  TProductPriceText(price: '256.0 - 6181819110.9')),
                                    
                      // Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight: Radius.circular(
                                  TSizes.productImageRadius)),
                        ),
                        child: const SizedBox(
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
