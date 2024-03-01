import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:t_ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:t_ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';


class ProductRecviewScreen extends StatelessWidget {
  const ProductRecviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- Appbar
      appBar:
          const TAppBar(title: Text("Reviews & Ratings"), showBackArrow: true),

      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified an are from people who use the same device you use'),
              const SizedBox(height: TSizes.spaceBetween),

              // Overall Product Ratings
              const ToverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Uer REviews List
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


