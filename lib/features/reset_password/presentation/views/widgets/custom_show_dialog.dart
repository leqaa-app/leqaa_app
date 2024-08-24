import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/font_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({
    super.key,
    required this.title,
    required this.description,
    required this.delete,
    required this.onPressedDelete,
    this.cancel,
    this.backgroundColor,
    this.isReturnBack = false,
  });

  final String title;
  final String description;
  final String? cancel;
  final Color? backgroundColor;
  final bool? isReturnBack;
  final String delete;
  final void Function() onPressedDelete;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: ColorManager.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: 335,
        width: 322,
        padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 19),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: 57.5,
              backgroundColor: ColorManager.mainColor,
              child: SvgPicture.asset(
                Assets.imagesLockCheck,
                height: 41.93,
                width: 36.94,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Styles.styleHeavy18.copyWith(
                fontWeight: FontWeightManager.extraBold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              textAlign: TextAlign.center,
              style: Styles.styleRegular12.copyWith(
                color: ColorManager.mediumGrayColor,
              ),
            ),
            Image.asset(
              'assets/images/loading.gif',
              height: 80,
              width: 80,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: Text(cancel ?? 'Cancel'),
            //     ),
            //     ElevatedButton(
            //       onPressed: onPressedDelete,
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: backgroundColor ?? Colors.red,
            //       ),
            //       child: Text(delete),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
