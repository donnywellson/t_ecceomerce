import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(
          bottom: TSizes.spaceBetween, top: TSizes.spaceBetween),
      child: Column(
        children: [
          // Brand with Product Count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBetween),

          //Brand Top 3 Product Images
          Row(
            children: images.map((image) =>  brandTopProductImageWidget(image, context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.primary : TColors.light,
        child: Image(fit: BoxFit.contain,image: AssetImage(image)),
      ),
    );
  }
}