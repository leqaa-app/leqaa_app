import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_app_bar.dart';
import 'package:leqaa/features/user_profile/presentation/views/widgets/student_login_view_body.dart';

class StudentLoginView extends StatelessWidget {
  const StudentLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBar(
        iconBack: true,
        logo: true,
        height: HeightValuesManagers.kHeight218,
        image: Assets.imagesEditImage,
        child: StudentLoginViewBody(),
      ),
    );
  }
}
