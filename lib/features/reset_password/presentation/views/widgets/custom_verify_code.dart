import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_text_button_nav.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/custom_otp_input_box.dart';

class CustomVerifyCode extends StatelessWidget {
  const CustomVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'تم إرسال كود التحقق على هاتفك. يرجى إدخال الكود\n المكون من 4 أرقام في الحقل أدناه لتأكيد تسجيل الدخول\n واستكمال العملية بنجاح',
          textAlign: TextAlign.right,
          style: Styles.styleRegular14
              .copyWith(color: ColorManager.lightGrayColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.5, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomOTPInputBox(),
                    CustomOTPInputBox(),
                    CustomOTPInputBox(),
                    CustomOTPInputBox(),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              CustomTextButtonNav(
                name: 'إعاده الارسال ',
                subject: 'لم يصلك الكود ؟',
                textNameStyle: Styles.styleRegular14
                    .copyWith(color: ColorManager.mainColor),
                textSubjectStyle: Styles.styleRegular14
                    .copyWith(color: ColorManager.darkGrayColor),
                onPressed: () {},
              ),
              const Text(
                '40 ثانيه',
                style: Styles.styleBold12,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
