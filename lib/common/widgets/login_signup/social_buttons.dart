import 'package:flutter/material.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.icomMd,
              height: TSizes.icomMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBetween),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.icomMd,
              height: TSizes.icomMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}