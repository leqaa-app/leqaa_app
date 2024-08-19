import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_background_container.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackgroundContainer(
        logo: true,
        iconBack: true,
        height: HeightValuesManagers.kHeight218,
        child: SignUpViewBody(),
      ),
    );
  }
}
