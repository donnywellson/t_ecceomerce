import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/layouts/grid_layout.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/primary_header_contaiber.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_ecommerce/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/promo_Slider.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBetween),

                        //Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Body --
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // -- Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts()),),
                  const SizedBox(height: TSizes.spaceBetween,),

                  //Popular Products
                  TGridLayout(itemCount: 2, itemBuilder: ( _, index) => const TProductCardVertical()),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}


