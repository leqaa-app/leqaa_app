import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_app_bar.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBar(
        logo: true,
        height: HeightValuesManagers.kHeight218,
        child: LoginViewBody(),
      ),
    );
  }
}
