import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:t_ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:t_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:t_ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // --Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profie Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: TSizes.spaceBetween / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBetween),
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBetween),

              TProfileMenu(title: 'Name', value: 'Donald', onPressed: (){}),
              TProfileMenu(title: 'Username', value: 'donnywellson@gmail.com', onPressed: (){}),


              const SizedBox(height: TSizes.spaceBetween),
              const Divider(),
              const SizedBox(height: TSizes.spaceBetween),

              // Heading Personal Info
              const TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBetween),

              TProfileMenu(title: 'User ID', value: '45689', icon: Iconsax.copy, onPressed: (){}),
              TProfileMenu(title: 'E-mail', value: 'donnywellson@gmail.com', onPressed: (){}),
              TProfileMenu(title: 'Phone Number', value: '+2349017397696', onPressed: (){}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: (){}),
              TProfileMenu(title: 'Date of Borth', value: '11 oct 2001', onPressed: (){}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBetween),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


