import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_ecommerce/features/shop/screens/checkout/checkout.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title:
              Text('cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        // --Items in Cart
        child: TCartItems(showAddRemoveButtons: false,),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckOutScreen()),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}


