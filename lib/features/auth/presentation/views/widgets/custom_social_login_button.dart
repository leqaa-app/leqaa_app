import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomSocialLogInButton extends StatelessWidget {
  const CustomSocialLogInButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(
          color: ColorManager.darkNavyBlueColor,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(10),
      color: ColorManager.whiteColor,
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      minWidth: double.infinity,
      height: 48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset(
            Assets.imagesGoogle,
            width: 32,
          ),
          const SizedBox(width: 10),
          Text(
            'تسجيل الدخول عن طريق جوجل',
            style: Styles.styleRegular14
                .copyWith(color: ColorManager.mediumGrayColor),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
