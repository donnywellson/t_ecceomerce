import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_ecommerce/utils/constants/Sizes.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget{
  const TSingleAddress({super.key, required this.selectedAdress});

  final bool selectedAdress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAdress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAdress ?
        Colors.transparent 
         : dark 
            ? TColors.primary
            : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBetween),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAdress ? Iconsax.tick_circle5 : null,
              color:  selectedAdress 
                  ? dark 
                      ? TColors.light
                      : TColors.dark.withOpacity(0.2)
                    : null  
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: TSizes.sm /2),
                const Text('(+234) 9017397696', maxLines: 1, overflow: TextOverflow.ellipsis),
                const SizedBox(height: TSizes.sm /2),
                const Text('Port Harcourt River State Chief Ogbobo close 9',)
            ],
          )
        ],
      ),     
    );
  }

}