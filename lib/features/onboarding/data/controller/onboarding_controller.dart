import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/features/onboarding/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next(BuildContext context);
  void onPageChanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void next(BuildContext context) {
    currentIndex++;

    if (currentIndex > onBoardingList.length - 1) {
      GoRouter.of(context).go(StringManager.kLoginView);
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
