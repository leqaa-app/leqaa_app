import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/utils/radius_values_managers.dart';
import 'package:leqaa/core/utils/width_values_managers.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.height = HeightValuesManagers.kHeight138,
    this.logo = false,
  });

  final Widget child;
  final double? height;
  final bool? logo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: height,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ColorManager.mainColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(RadiusValuesManagers.kRadius64),
              ),
            ),
            child: logo == true
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.imagesLeqaaLogo,
                        width: WidthValuesManagers.kWidth100,
                        height: HeightValuesManagers.kHeight75,
                      ),
                    ],
                  )
                : null,
          ),
          child,
        ],
      ),
    );
  }
}
