import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/onboarding/data/controller/onboarding_controller.dart';
import 'package:leqaa/features/onboarding/data/datasource/static/static.dart';
import 'package:leqaa/features/onboarding/presentation/views/widgets/custom_button_onboarding.dart';
import 'package:leqaa/features/onboarding/presentation/views/widgets/custom_dot_controller_onboarding.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (index) => controller.onPageChanged(index),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 39),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    onBoardingList[index].image,
                    height: 350,
                  ),
                  const SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Text(
                          onBoardingList[index].title,
                          textAlign: TextAlign.center,
                          style: Styles.styleBold30,
                        ),
                        const SizedBox(height: 40),
                        Text(
                          onBoardingList[index].body,
                          textAlign: TextAlign.center,
                          style: Styles.styleRegular15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 6),
                  CustomDotControllerOnBoarding(),
                  Spacer(flex: 4),
                  CustomButtonOnBoarding(),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        );
      },
    );
  }
}
