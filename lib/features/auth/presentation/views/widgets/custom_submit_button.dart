import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({super.key, required this.titleButton, required this.onPressed});

  final String titleButton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: ColorManager.mainColor,
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      minWidth: double.infinity,
      height: 56,
      onPressed: onPressed,
      child: Text(
        titleButton,
        style: Styles.styleRegular16,
      ),
    );
  }
}
