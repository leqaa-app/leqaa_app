import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/custom_verify_code.dart';

class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomVerifyCode(),
          CustomSubmitButton(
            titleButton: 'تأكيد',
            onPressed: () {
              GoRouter.of(context).push(StringManager.kNewPasswordView);
            },
          ),
        ],
      ),
    );
  }
}
