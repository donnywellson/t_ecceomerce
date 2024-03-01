import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:t_ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:t_ecommerce/features/authentication/sceeens/signup/widgets/signup_form.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class SigupScreen extends StatelessWidget {
  const SigupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Form
              const TSignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Divider
              TFormDivider(dark: dark, dividerText: TTexts.orSignUpWith),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Social Buttons
             const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


