import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/styles/shadows.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:t_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:t_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:t_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:t_ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    // container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  const TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
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
            const Padding(
              padding:  EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   TproductTitleText(
                      title: 'Green Nike Air Shoes', smallsize: true),
                   SizedBox(height: TSizes.spaceBetween / 2),
                  TbrandTitleWithVerifiedIcon(title: "Nike"),
                ],
              ),
            ),

            // Add spacer() here to keep the height of each Box same in case 1 or 2 lines of heading
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.all(TSizes.sm),
                  child: TProductPriceText(price: '35.0', isLarge: true),
                ),

                // Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight:
                            Radius.circular(TSizes.productImageRadius)),
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
            )
          ],
        ),
      ),
    );
  }
}


