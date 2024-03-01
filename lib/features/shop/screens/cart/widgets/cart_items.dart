import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:t_ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:t_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if(showAddRemoveButtons)const SizedBox(height: TSizes.spaceBetween),
    
          // Add Remove Button Row with total Price
          if(showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Extra Space
                  SizedBox(width: 70),
    
                  // Add Remove Buttons
                  TProductQuantityWIthAddRemoveButton(),
                ],
              ),
    
              // Product for total price
              TProductPriceText(price: '256')
            ],
          ),
        ],
      ),
    );
  }
}