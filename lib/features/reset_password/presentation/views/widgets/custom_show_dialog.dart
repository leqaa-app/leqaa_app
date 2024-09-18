import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    this.isIconLoading = false,
    required this.iconCircleAvatare,
  });

  final String title;
  final String description;
  final String? cancel;
  final Color? backgroundColor;
  final bool? isReturnBack;
  final bool? isIconLoading;
  final String iconCircleAvatare;
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
                iconCircleAvatare,
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
            isIconLoading == true
                ? Image.asset(
                    'assets/images/loading.gif',
                    height: 80,
                    width: 80,
                  )
                : const SizedBox(),
            isIconLoading == false
                ? const SizedBox(height: 22)
                : const SizedBox(),
            isIconLoading == false
                ? ElevatedButton(
                    onPressed: onPressedDelete,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: const Size(112, 48),
                      backgroundColor: ColorManager.mainColor,
                    ),
                    child: Text(
                      delete,
                      style: Styles.styleBold16.copyWith(
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  )
                : const SizedBox(),
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
