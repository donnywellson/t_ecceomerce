import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/features/authentication/sceeens/password_configuration/forget_password.dart';
import 'package:t_ecommerce/features/authentication/sceeens/signup/signup.dart';
import 'package:t_ecommerce/navigation_menu.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text(TTexts.email)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),
          // Remeber Me & Forget Password
          Row(
            children: [
              // Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
              //Forget Password
              TextButton(
                  onPressed:() => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgotPassword)),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          //Sign In Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(()=> const NavigationMenu()), child: const Text(TTexts.signIn))),
          //Create Account Button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SigupScreen()),
                  child: const Text(TTexts.createAccount))),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          )
        ],
      ),
    );
  }
}