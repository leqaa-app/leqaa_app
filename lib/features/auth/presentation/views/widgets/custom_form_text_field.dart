import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    this.hinText,
    this.onChanged,
    this.obscureText = false,
    required this.textTitle,
    this.icon,
    this.prefixIcon,
  });

  final Function(String)? onChanged;
  final String textTitle;
  final String? hinText;
  final String? icon;
  final Widget? prefixIcon;

  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          textTitle,
          style:
              Styles.styleRegular14.copyWith(color: ColorManager.darkGrayColor),
        ),
        const SizedBox(height: 8),
        TextFormField(
          obscureText: obscureText!,
          validator: (data) {
            if (data!.isEmpty) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
          onChanged: onChanged,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: hinText,
            hintTextDirection: TextDirection.rtl,
            hintStyle: Styles.styleLight12,
            suffixIcon: icon == null
                ? null
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        icon!,
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
            prefixIcon: prefixIcon,
            // focusedBorder: OutlineInputBorder(
            //   borderSide: const BorderSide(
            //     color: ColorManager.silverGray,
            //   ),
            //   borderRadius: BorderRadius.circular(6),
            // ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorManager.silverGray,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorManager.silverGray,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorManager.silverGray,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ],
    );
  }
}
