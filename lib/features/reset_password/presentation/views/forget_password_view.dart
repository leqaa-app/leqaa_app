import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_background_container.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: CustomBackgroundContainer(
        iconBack: true,
        // logo: true,
        height: HeightValuesManagers.kHeight218,
        child: ForgetPasswordViewBody(),
      ),
    );
  }
}
