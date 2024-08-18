import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomSelectedOption extends StatelessWidget {
  const CustomSelectedOption({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  });

  final String title;
  final String subTitle;
  final String icon;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.silverGray, width: 1),
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? ColorManager.mainColor : ColorManager.whiteColor,
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundColor:
                  isSelected ? ColorManager.whiteColor : ColorManager.mainColor,
              child: SvgPicture.asset(
                icon,
                width: 24,
                height: 24,
                color: isSelected
                    ? ColorManager.mainColor
                    : ColorManager.whiteColor,
              ),
            ),
            title: Text(
              title,
              style: Styles.styleRegular14.copyWith(
                color: isSelected
                    ? ColorManager.whiteColor
                    : ColorManager.mainColor,
              ),
            ),
            subtitle: Text(
              subTitle,
              style: Styles.styleBold14.copyWith(
                color: isSelected
                    ? ColorManager.whiteColor
                    : ColorManager.mainColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
