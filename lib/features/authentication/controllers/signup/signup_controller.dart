import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:t_ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:t_ecommerce/data/repositories/user/user_repository.dart';
import 'package:t_ecommerce/features/authentication/sceeens/signup/verify_email.dart';
import 'package:t_ecommerce/features/personalization/models/user_model.dart';
import 'package:t_ecommerce/utils/helpers/network_manager.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/popups/full_screen_loader.dart';
import 'package:t_ecommerce/utils/popups/loaders.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //  Variables
  final hidePassword = true.obs; // Observable for hiding/showing password
  final privacyPolicy = true.obs;
  final email = TextEditingController(); // Controller for email layout
  final lastName = TextEditingController(); // Controller for last name input
  final userName = TextEditingController(); // Controller for email input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for first name layout
  final phoneNumber =
      TextEditingController(); // Controller for phone number layout
  GlobalKey<FormState> signUpFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  // SIGNUP

    void signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.doceranimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if (!signUpFormKey.currentState!.validate()) return;

      // Privacy Policy Check
      if(!privacyPolicy.value){
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In ordet to create account, you must have to read and accept the Privacy Policy & Terms of Use'
        );
        return;
      }

      // Register user in the Firebase Authentication & save user data in the firebase
      final userCredential = await AuthenticationRepository.instance.registerEmailAndpassword(email.text.trim(), password.text.trim());

      // Save Authentication user date in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid, 
        firstName: firstName.text.trim(), 
        lastName: lastName.text.trim(), 
        username: userName.text.trim(), 
        email: email.text.trim(), 
        phoneNumber: phoneNumber.text.trim(), 
        profilePicture: ''
        );

        final userRepository = Get.put(UserRepository());
        await userRepository.saveUserRecord(newUser);

        // Remove Loader
        TFullScreenLoader.stopLoading();
      
        // Show Succes Message
        TLoaders.succeessSnackBar(title: "Congratulations", message: "Your account has been created! Verify wmail to continue");

        // Move to Verify Email Screen
        Get.to(() =>  VerifyEmailScreen(email: email.text.trim(),));
      } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show your Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!' , message: e.toString());
    } 
  }
}
