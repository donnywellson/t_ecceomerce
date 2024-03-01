import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/bindings/general_bondings.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TappTheme.lightTheme,
      darkTheme: TappTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // Show Loader or Progress indicator
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white,)),),
    );
  }
}
