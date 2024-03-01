import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:t_ecommerce/utils/constants/Sizes.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImages.userProfileImag1)),
                const SizedBox(width: TSizes.spaceBetween),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBetween),

        // Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBetween),
            Text(
              '03 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBetween),
        const ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' shoe more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBetween),

        // Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text(
                      '02 Nov, 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(height: TSizes.spaceBetween),
                const ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' shoe more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBetween),
      ],
    );
  }
}
