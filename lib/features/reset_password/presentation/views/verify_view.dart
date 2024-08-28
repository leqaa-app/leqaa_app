import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_app_bar.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/verify_view_body.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBar(
        iconBack: true,
        logo: true,
        height: HeightValuesManagers.kHeight218,
        child: VerifyViewBody(),
      ),
    );
  }
}
