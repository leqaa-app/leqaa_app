import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class EllipseOptions extends StatelessWidget {
  const EllipseOptions({
    super.key,
    required this.text,
    required this.index,
    required this.onTap,
    required this.isSelected,
  });

  final String text;
  final bool isSelected;
  final int index;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: Styles.styleRegular14
                .copyWith(color: ColorManager.mediumGrayColor),
          ),
          const SizedBox(width: 8),
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              border: Border.all(color: ColorManager.mediumGrayColor),
              shape: BoxShape.circle,
            ),
            child: isSelected
                ? Container(
                    margin: const EdgeInsets.all(1.5),
                    decoration: const BoxDecoration(
                      color: ColorManager.mainColor,
                      shape: BoxShape.circle,
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
