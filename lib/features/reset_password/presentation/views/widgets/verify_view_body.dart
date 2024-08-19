import 'package:flutter/material.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/custom_verify_code.dart';

class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomVerifyCode(),
          
        ],
      ),
    );
  }
}
