import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
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
    this.iconBack = false,
  });

  final Widget child;
  final double? height;
  final bool? logo;
  final bool? iconBack;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 23),
            decoration: const BoxDecoration(
              color: ColorManager.mainColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(RadiusValuesManagers.kRadius64),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                iconBack == true
                    ? Row(
                        children: [
                          IconButton(
                            onPressed: () => GoRouter.of(context).pop(),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 24,
                              color: ColorManager.whiteColor,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
                logo == true
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
                    : const SizedBox(
                        width: WidthValuesManagers.kWidth100,
                        height: HeightValuesManagers.kHeight75,
                      ),
              ],
            ),
          ),
          child,
        ],
      ),
    );
  }
}
