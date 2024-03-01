import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/layouts/grid_layout.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/features/shop/screens/brands/brand_products.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const TSectionHeading(title: 'Brands'),
              const SizedBox(height: TSizes.spaceBetween),

              // --Brands
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
