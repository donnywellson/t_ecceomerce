import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/layouts/grid_layout.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/features/shop/screens/brands/all_brands.dart';
import 'package:t_ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: const Text('Store'),
          actions: [TCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxisScreolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search bar
                      const SizedBox(height: TSizes.spaceBetween),
                      const TSearchContainer(
                          text: '',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // -- Featured Brands
                      TSectionHeading(
                          title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrandsScreen())),
                      const SizedBox(height: TSizes.spaceBetween / 1.5),

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              )
            ];
          },
          // Body
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}


