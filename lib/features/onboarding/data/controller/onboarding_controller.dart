import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:leqaa/features/onboarding/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  void onPageChanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void next() {
    currentIndex++;

    if (currentIndex > onBoardingList.length - 1) {
      log('go to login');
      // Get.offNamed('/login');
    } else {
      pageController.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  previous() {
    if (currentIndex > 0) {
      currentIndex--;
      pageController.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }
}
