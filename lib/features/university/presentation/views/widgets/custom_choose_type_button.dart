import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomChooseTypeButton extends StatelessWidget {
  const CustomChooseTypeButton({
    super.key,
    required this.image,
    required this.title,
    this.isSelected = false,
    required this.onTap,
  });

  final String image;
  final String title;
  final void Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 148,
        width: 144,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color:
                isSelected ? ColorManager.whiteColor : ColorManager.silverGray,
          ),
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? ColorManager.mainColor : ColorManager.whiteColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              color:
                  isSelected ? ColorManager.whiteColor : ColorManager.mainColor,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: Styles.styleBold18.copyWith(
                color: isSelected
                    ? ColorManager.whiteColor
                    : ColorManager.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
