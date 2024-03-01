import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/layouts/grid_layout.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:t_ecommerce/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:t_ecommerce/features/shop/screens/home/home.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget{
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
          ),
      ),
    );
  }

}
