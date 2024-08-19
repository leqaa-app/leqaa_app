import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomTextButtonNav extends StatelessWidget {
  const CustomTextButtonNav({
    super.key,
    required this.onPressed,
    required this.name,
    required this.subject,
    this.textNameStyle,
    this.textSubjectStyle,
  });

  final void Function() onPressed;
  final String name;
  final String subject;
  final TextStyle? textNameStyle;
  final TextStyle? textSubjectStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            name,
            style: textNameStyle ??
                Styles.styleRegular12
                    .copyWith(decoration: TextDecoration.underline),
          ),
        ),
        Text(
          subject,
          style: textSubjectStyle ??
              Styles.styleLight12.copyWith(color: ColorManager.mediumGrayColor),
        ),
      ],
    );
  }
}
