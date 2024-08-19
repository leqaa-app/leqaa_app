import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/custom_selected_option.dart';

class ResetPasswordOptions extends StatefulWidget {
  const ResetPasswordOptions({super.key});

  @override
  State<ResetPasswordOptions> createState() => _ResetPasswordOptionsState();
}

class _ResetPasswordOptionsState extends State<ResetPasswordOptions> {
  bool isSelected = true;

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'حدد تفاصيل الاتصال التي يجب أن نستخدمها لإعادة\n .تعيين كلمة المرور الخاصة بك',
          textAlign: TextAlign.right,
          style: Styles.styleRegular14
              .copyWith(color: ColorManager.lightGrayColor),
        ),
        const SizedBox(height: 16),
        CustomSelectedOption(
          isSelected: isSelected,
          title: 'عن طريق ال SMS',
          subTitle: '\u202A+201*******00\u202C',
          icon: Assets.imagesPhone,
          onTap: _toggleSelection,
        ),
        const SizedBox(height: 16),
        CustomSelectedOption(
          isSelected: !isSelected,
          title: 'عن طريق الايميل',
          subTitle: '\u202A*******@gmail.com\u202C',
          icon: Assets.imagesEmail,
          onTap: _toggleSelection,
        ),
      ],
    );
  }
}
