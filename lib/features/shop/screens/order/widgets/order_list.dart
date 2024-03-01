// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBetween,),
      itemBuilder: (_, index) =>  TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // -- Row 1
            Row(
              children: [
                // 1 -- Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBetween / 2),
      
                // 2 - Stasus & Data
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                         style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text('09 Dec 2024', style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
      
                // 3 - Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),
            const SizedBox(height: TSizes.spaceBetween),
            // -- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 -- Icon
                      const Icon(Iconsax.ship),
                      const SizedBox(width: TSizes.spaceBetween / 2),
                  
                      // 2 - Stasus & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                               style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      // 1 -- Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBetween / 2),
                  
                      // 2 - Stasus & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                               style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('01 Jan 2025', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
          ),
      ),
    );
  }
}