import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_dividing_line_view.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_option_button.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_social_login_button.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_text_button_nav.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  // bool isLoading = false;
  String? email, password;

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // const SizedBox(height: HeightValuesManagers.kHeight21),
          // Center(
          //   child: Image.asset(
          //     Assets.imagesLeqaaLogo,
          //     width: WidthValuesManagers.kWidth100,
          //     height: HeightValuesManagers.kHeight75,
          //   ),
          // ),
          // const SizedBox(height: HeightValuesManagers.kHeight93),
          const SizedBox(height: HeightValuesManagers.kHeight24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'تسجيل الدخول',
                  style: Styles.styleBold18
                      .copyWith(color: ColorManager.darkGrayColor),
                ),
                const SizedBox(height: 24),
                const CustomOptionButton(),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
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
                      textTitle: 'كلمة المرور',
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
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => GoRouter.of(context)
                              .push(StringManager.kForgetPasswordView),
                          child: Text(
                            'هل نسيت كلمة المرور؟',
                            style: Styles.styleLight12.copyWith(
                              color: ColorManager.mainColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const CustomSubmitButton(titleButton: 'تسجيل الدخول'),
                  ],
                ),
                const SizedBox(height: 22),
                Column(
                  children: [
                    const CustomDividingLineView(),
                    const SizedBox(height: 24),
                    CustomSocialLogInButton(onPressed: () {}),
                    const SizedBox(height: 24),
                    CustomTextButtonNav(
                      onPressed: () {
                        GoRouter.of(context).push(StringManager.kSignUpView);
                      },
                      name: 'إنشاء حساب ',
                      subject: 'ليس لديك حساب ؟',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
