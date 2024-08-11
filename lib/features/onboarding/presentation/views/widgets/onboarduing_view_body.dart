import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/radius_values_managers.dart';
import 'package:leqaa/features/onboarding/presentation/views/widgets/custom_slider_onboarding.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key, required this.onPressedButton});

  final void Function() onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 138,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: ColorManager.mainColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(RadiusValuesManagers.kRadius64),
            ),
          ),
        ),
        CustomSliderOnBoarding(onPressed: onPressedButton),
      ],
    );
  }
}
