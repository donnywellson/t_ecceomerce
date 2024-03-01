import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Coding with T', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(width: TSizes.spaceBetween / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBetween),
            Text('(+234) 9017397696', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBetween /2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBetween),
            Expanded(child: Text('Chief Ogbobo Close 9', style: Theme.of(context).textTheme.bodyMedium)),
          ],
        )
      ],
    );
  }
}