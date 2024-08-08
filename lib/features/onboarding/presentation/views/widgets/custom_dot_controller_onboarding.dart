import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/utils/radius_values_managers.dart';
import 'package:leqaa/core/utils/width_values_managers.dart';
import 'package:leqaa/features/onboarding/data/controller/onboarding_controller.dart';
import 'package:leqaa/features/onboarding/data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
      builder: (controller) => Row(
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 900),
              margin: const EdgeInsets.only(right: 8),
              height: HeightValuesManagers.kHeight12,
              width: WidthValuesManagers.kWidth12,
              decoration: BoxDecoration(
                color: controller.currentIndex == index
                    ? ColorManager.mainColor
                    : ColorManager.lightGray2Color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(RadiusValuesManagers.kRadius100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
