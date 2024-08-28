import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_app_bar.dart';
import 'package:leqaa/features/university/presentation/views/widgets/organizer_login_view_body.dart';

class OrganizerLoginView extends StatelessWidget {
  const OrganizerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBar(
        logo: true,
        iconBack: true,
        height: HeightValuesManagers.kHeight218,
        child: OrganizerLoginViewBody(),
      ),
    );
  }
}
