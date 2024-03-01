import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TProductQuantityWIthAddRemoveButton extends StatelessWidget {
  const TProductQuantityWIthAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 70),
        // Add Remove Buttons
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TCircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: TSizes.md,
              color: THelperFunctions.isDarkMode(context)
                  ? TColors.white
                  : TColors.black,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.darkerGrey
                  : TColors.light,
            ),
            const SizedBox(width: TSizes.spaceBetween),
            Text('2',
                style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: TSizes.spaceBetween),
            const TCircularIcon(
              icon: Iconsax.add,
              width: 32,
              height: 32,
              size: TSizes.md,
              color: TColors.white,
              backgroundColor: TColors.primary,
            ),
          ],
        ),
      ],
    );
  }
}