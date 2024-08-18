import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/reset_password_options.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Transform.translate(
        offset: const Offset(0, -100),
        child: Column(
          children: [
            SvgPicture.asset(
              Assets.imagesCuate4,
              width: 311,
              height: 300,
            ),
            const SizedBox(height: 48),
            const ResetPasswordOptions(),
            const SizedBox(height: 24),
            const CustomSubmitButton(titleButton: 'تأكيد'),
          ],
        ),
      ),
    );
  }
}
