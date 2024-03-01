import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TBottomAddTocart extends StatelessWidget {
  const TBottomAddTocart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(TSizes.cardradiusLg),
            topRight: Radius.circular(TSizes.cardradiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.grey,
              ),
              const SizedBox(width: TSizes.spaceBetween),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSizes.spaceBetween),
              const TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.grey,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black
            ),
            child: const Text('Add to cart'),
          )
        ],
      ),
    );
  }
}
