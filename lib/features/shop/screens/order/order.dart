import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/features/shop/screens/order/widgets/order_List.dart';
import 'package:t_ecommerce/utils/constants/Sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- AppBar
      appBar: TAppBar(
          title: Text('My Orders',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // -- Order
        child: TOrderListItems(),
      ),
    );
  }
}
