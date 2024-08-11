import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/radius_values_managers.dart';
import 'package:leqaa/features/onboarding/data/controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        minimumSize: WidgetStateProperty.all(const Size(50, 50)),
        backgroundColor: WidgetStateProperty.all(ColorManager.mainColor),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(RadiusValuesManagers.kRadius100),
            ),
          ),
        ),
      ),
      child: const Icon(
        CupertinoIcons.arrow_right,
        color: ColorManager.whiteColor,
      ),
    );
  }
}
