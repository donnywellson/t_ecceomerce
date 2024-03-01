import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class ResetPassWord extends StatelessWidget {
  const ResetPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image:  const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Title & subTitle
              Text(TTexts.changePasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBetween),
              Text(TTexts.changePasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.done),),
              ),
              const SizedBox(height: TSizes.spaceBetween),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),
              )
            ],
          ),
          ),
      ),
    );
  }
}
