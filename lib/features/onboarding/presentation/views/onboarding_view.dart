import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/onboarding/data/controller/onboarding_controller.dart';
import 'package:leqaa/features/onboarding/presentation/views/widgets/onboarduing_view_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  _storeOnBoardInfo() async {
    int isViewd = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(StringManager.kOnBoardingView, isViewd);
  }

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return GetBuilder<OnBoardingControllerImpl>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorManager.mainColor,
          elevation: 0,
          leading: controller.currentIndex == 0
              ? null
              : IconButton(
                  onPressed: () => controller.previous(),
                  color: ColorManager.whiteColor,
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
          actions: [
            TextButton(
              onPressed: () {
                _storeOnBoardInfo();
                GoRouter.of(context).go(StringManager.kLoginView);
              },
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                minimumSize: WidgetStateProperty.all(const Size(0, 0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 27),
                child: Text(
                  'تخطي',
                  style: Styles.styleBold16.copyWith(
                    color: ColorManager.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: OnboardingViewBody(
          onPressedButton: () {
            _storeOnBoardInfo();
            controller.next(context);
          },
        ),
      ),
    );
  }
}
