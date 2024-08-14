import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_auth_submit_button.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_text_button_nav.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  // bool isLoading = false;
  String? email, password;

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: HeightValuesManagers.kHeight24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'إنشاء حساب جديد',
                style: Styles.styleBold18
                    .copyWith(color: ColorManager.darkGrayColor),
              ),
              const SizedBox(height: 28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomFormTextField(
                    onChanged: (data) {
                      email = data;
                    },
                    textTitle: 'اسم المستخدم',
                    hinText: 'الاسم',
                    suffixIcon: Image.asset(Assets.imagesUserEdit),
                  ),
                  const SizedBox(height: 12),
                  CustomFormTextField(
                    onChanged: (data) {
                      email = data;
                    },
                    textTitle: 'البريد الالكتروني',
                    hinText: 'الايميل الجامعي او رقم الهاتف',
                    suffixIcon: Image.asset(Assets.imagesSms),
                  ),
                  const SizedBox(height: 12),
                  CustomFormTextField(
                    obscureText: _obscureText,
                    onChanged: (data) {
                      password = data;
                    },
                    textTitle: 'كلمة المرور',
                    hinText: 'كلمة المرور',
                    suffixIcon: Image.asset(Assets.imagesLock),
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
                    textTitle: 'تأكيد كلمة المرور',
                    hinText: 'كلمة المرور',
                    suffixIcon: Image.asset(Assets.imagesLock),
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
                  const SizedBox(height: 28),
                  const CustomAuthSubmitButton(titleButton: 'إنشاء حساب'),
                  const SizedBox(height: 24),
                  CustomTextButtonNav(
                    onPressed: () => GoRouter.of(context).pop(),
                    name: 'تسجيل الدخول ',
                    subject: 'لديك حساب بالفعل ؟',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
