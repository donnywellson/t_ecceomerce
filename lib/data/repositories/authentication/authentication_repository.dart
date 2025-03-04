import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_ecommerce/features/authentication/sceeens/login/login.dart';
import 'package:t_ecommerce/features/authentication/sceeens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_ecommerce/features/authentication/sceeens/signup/verify_email.dart';
import 'package:t_ecommerce/navigation_menu.dart';
import 'package:t_ecommerce/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:t_ecommerce/utils/exceptions/firebase_exceptions.dart';
import 'package:t_ecommerce/utils/exceptions/format_exceptions.dart';
import 'package:t_ecommerce/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called from main.dart an app launch
  @override
  void onReady() {
    // Remove the native splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  // Function to show Relevant Screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const OnBoardingScreen());
    }
  }

  /*------------------------------ Email & Password sign-in ------------------------ */

  // [EmailAuthentication] - SignIn

  // [EmailAuthentication] - REGISTER
  Future<UserCredential> registerEmailAndpassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wromg. Please try again';
    }
  }

  // [EmailVerification] - MAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
  // [EmailAuthentICATION] - FORGET PASSWORD

  /*------------------------------ Federated identity & social sign-in ------------------------ */

  // [GoogleuthentICATION] - GOOGLE

  // [FacebookAuthentICATION] - FACEBOOK

  /*------------------------------ /.end Federated identity & social sign-in ------------------------ */

  // [LogoutUser] - void for any authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

  // DELETE USER - Remove user Auth and Firestore Account
}
