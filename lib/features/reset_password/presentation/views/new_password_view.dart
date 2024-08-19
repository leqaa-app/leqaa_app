import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_background_container.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/NewPasswordViewBody.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackgroundContainer(
        iconBack: true,
        logo: true,
        height: HeightValuesManagers.kHeight218,
        child: NewPasswordViewBody(),
      ),
    );
  }
}
