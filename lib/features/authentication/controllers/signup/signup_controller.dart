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
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', ''); // Adjust the loading message and image as needed

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!signUpFormKey.currentState!.validate()) return;

      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create an account, you must read and accept the Privacy Policy & Terms of Use');
        return;
      }

      // Register user in Firebase Authentication
      final userCredential = await AuthenticationRepository.instance
          .registerEmailAndpassword(email.text.trim(), password.text.trim());

      // Save user data in Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: 'profilePicture',
      );

      // Save user data in Firestore
      await UserRepository.instance.saveUserRecord(newUser);

      // Show success message
      TLoaders.succeessSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue');

      // Move to Verify Email Screen
      Get.to(() => const VerifyEmailScreen());

    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
