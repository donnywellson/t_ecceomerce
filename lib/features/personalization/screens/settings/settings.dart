import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/common/widgets/custom_shapes/containers/primary_header_contaiber.dart';
import 'package:t_ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:t_ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/features/personalization/screens/address/address.dart';
import 'package:t_ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:t_ecommerce/features/shop/screens/order/order.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TPrimaryHeaderContainer(
                    child: Column(
                      children: [
                        TAppBar(
                            title: Text(
                          'Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white),
                        )),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        //User Profile Card
                        TUserProfileTile(onPressed: () => Get.to(const ProfileScreen()),),
                        const SizedBox(height: TSizes.spaceBtwSections),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // -- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // -- Account Settings
                  const TSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBetween),

                   TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Get shopping delivery address',
                    onTap: ()=> Get.to(() => const USerAddressScreen()),
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(()=> const OrderScreen()),
                  ),
                  const  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                  ),

                  // -- App settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBetween),
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result in safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //  Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBetween * 2.5,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
