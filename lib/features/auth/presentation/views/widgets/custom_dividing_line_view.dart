import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomDividingLineView extends StatelessWidget {
  const CustomDividingLineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: ColorManager.silverGray,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            'أو سجل عن طريق',
            style: Styles.styleLight12
                .copyWith(color: ColorManager.mediumGrayColor),
          ),
        ),
        const Expanded(
          child: Divider(
            color: ColorManager.silverGray,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
