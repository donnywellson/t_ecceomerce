import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/styles/spacing_styles.dart';
import 'package:t_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:t_ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:t_ecommerce/features/authentication/sceeens/login/widgets/login_form.dart';
import 'package:t_ecommerce/features/authentication/sceeens/login/widgets/login_header.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            //Logo, Title and Sub-Title
            TLoginHeader(dark: dark),
            // Form
            const TLoginForm(),
             //Divider
            TFormDivider(dark: dark, dividerText: TTexts.orSignInWith,),
            //Footer
            const TSocialButtons(),
          ],
        ),
      ),
    );
  }
}




