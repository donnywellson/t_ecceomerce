import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/features/personalization/screens/settings/settings.dart';
import 'package:t_ecommerce/features/shop/screens/home/home.dart';
import 'package:t_ecommerce/features/shop/screens/store/store.dart';
import 'package:t_ecommerce/features/shop/screens/wishlist/wishlist.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : TColors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.white.withOpacity(0.1),
        
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Homee'),
           NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
           NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
           NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),

      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
    final Rx<int> selectedIndex = 0.obs;

    final screens = [const HomeScreen(), const StoreScreen(), const FavoriteScreen(), const SettingsScreen()];
}
