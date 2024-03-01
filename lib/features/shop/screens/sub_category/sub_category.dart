import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:t_ecommerce/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports Shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const TRoundedImage(
                  width: double.infinity,
                  imageUrl: TImages.promoBanner1,
                  applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Sub-Categories
              Column(
                children: [
                  // Heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBetween / 2),
                  
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBetween),
                      itemBuilder: (context, index) => const TProductCardHorizontal(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
