import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/custom_show_dialog.dart';

class NewPasswordViewBody extends StatefulWidget {
  const NewPasswordViewBody({super.key});

  @override
  State<NewPasswordViewBody> createState() => _NewPasswordViewBodyState();
}

class _NewPasswordViewBodyState extends State<NewPasswordViewBody> {
  String? email, password;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'تعيين كلمة المرور',
            style:
                Styles.styleBold18.copyWith(color: ColorManager.darkGrayColor),
          ),
          const SizedBox(height: 24),
          CustomFormTextField(
            onChanged: (data) {
              email = data;
            },
            textTitle: 'البريد الالكتروني',
            hinText: 'الايميل الجامعي او رقم الهاتف',
            icon: Assets.imagesEmail,
          ),
          const SizedBox(height: 12),
          CustomFormTextField(
            obscureText: _obscureText,
            onChanged: (data) {
              password = data;
            },
            textTitle: 'كلمة المرور الجديدة',
            hinText: 'كلمة المرور',
            icon: Assets.imagesLock,
            prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: ColorManager.silverGray,
              ),
            ),
          ),
          const SizedBox(height: 12),
          CustomFormTextField(
            obscureText: _obscureText,
            onChanged: (data) {
              password = data;
            },
            textTitle: 'تأكيد كلمة المرور الجديدة',
            hinText: 'كلمة المرور',
            icon: Assets.imagesLock,
            prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: ColorManager.silverGray,
              ),
            ),
          ),
          const SizedBox(height: 22),
          CustomSubmitButton(
            titleButton: 'تأكيد',
            onPressed: () => customShowDialog(
              context,
              title: 'تم تغيير كلمة المرور',
              description:
                  'لقد تم تسجيل كلمة المرور الجديدة الخاصة بك. الآن\n .يمكنك الاستمتاع بجميع مزايا تطبيقنا مرة أخرى',
              delete: 'تم',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  void customShowDialog(
    BuildContext context, {
    required void Function() onPressed,
    required String title,
    required String description,
    required String delete,
    String? cancel,
    Color? backgroundColor,
    bool? isReturnBack,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomShowDialog(
          onPressedDelete: onPressed,
          title: title,
          description: description,
          cancel: cancel,
          backgroundColor: backgroundColor,
          isReturnBack: isReturnBack,
          delete: delete,
        );
      },
    );
  }
}
