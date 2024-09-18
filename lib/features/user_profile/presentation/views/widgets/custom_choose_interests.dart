import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomChooseInterests extends StatelessWidget {
  const CustomChooseInterests({
    super.key,
    required this.isSelected,
    required this.title,
    required this.onTap,
  });

  final void Function() onTap;
  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
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
            Text(
              title,
              style: Styles.styleBold16.copyWith(
                color: isSelected
                    ? ColorManager.whiteColor
                    : ColorManager.silverGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
