import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_card_widget.dart';
import 'package:t_ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_ecommerce/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:t_ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:t_ecommerce/utils/constants/Sizes.dart';
import 'package:readmore/readmore.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const TBottomAddTocart(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1 - Product Image Slider
            const TProductImageSlider(),

            // 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.defaultSpace , right: TSizes.defaultSpace,),
              child: Column(
                children: [
                  // - Rating & Share
                  const TRatingAndShare(),

                  // - Price, Title, Stock & Brand
                  const TProductMetaData(),

                  // -- Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBetween),

                  // -- Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBetween),

                  // - Description
                  const TSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBetween),
                  const ReadMoreText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mi bibendum neque egestas congue quisque egestas diam. Fringilla phasellus faucibus scelerisque eleifend. Quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Posuere urna nec tincidunt praesent semper feugiat nibh. Aliquam nulla facilisi cras fermentum odio eu feugiat pretium. Odio tempor orci dapibus ultrices in iaculis nunc. Semper auctor neque vitae tempus quam. Aenean et tortor at risus viverra. Consectetur adipiscing elit ut aliquam purus sit amet luctus. Cursus turpis massa tincidunt dui ut ornare. Enim nunc faucibus a pellentesque sit. Est velit egestas dui id ornare arcu. Accumsan in nisl nisi scelerisque. Nibh tortor id aliquet lectus proin nibh nisl.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                  ),

                  // - Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBetween),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews(199)', onPressed: (){}, showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3), onPressed: () =>Get.to(() => const ProductRecviewScreen())),
                    ],
                  ),
                  
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
