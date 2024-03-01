import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_ecommerce/features/authentication/sceeens/login/login.dart';
import 'package:t_ecommerce/features/authentication/sceeens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show Relevant Screen
  screenRedirect() async {
    // Local Storage
    if(kDebugMode){
      print('===================== GET STORAGE Auth Repo ===============');
      print(deviceStorage.read('isFirstTime'));
    }
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }

  /*------------------------------ Email & Password sign-in ------------------------ */

  // [EmailAuthentication] - SignIn

  // [EmailAuthentication] - REGISTER
  Future<UserCredential> registerEmailAndpassword(String email, String password) async {
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_){
      throw const TFormatException();
    } on PlatformException catch (e){
      throw TPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wromg. Please try again';
    }
  }

  // [EmailVerification] - MAIL VERIFICATION
  Future<void> sendEmailVerification() async{
    try{
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e){
      throw const  TFormatException();
    }  on PlatformException catch (e){
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

  // DELETE USER - Remove user Auth and Firestore Account


}