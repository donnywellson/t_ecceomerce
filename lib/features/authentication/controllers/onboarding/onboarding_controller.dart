import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/features/authentication/sceeens/login/login.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();

      if (kDebugMode) {
        print('===================== GET STORAGE Next Button ===============');
        print(storage.read('isFirstTime'));
      }

      storage.write('isFirstTime', false);
      if(kDebugMode){
      print('===================== GET STORAGE Next Button ===============');
      print(storage.read('isFirstTime'));
    }
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update Current Index & jump to the last Page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
