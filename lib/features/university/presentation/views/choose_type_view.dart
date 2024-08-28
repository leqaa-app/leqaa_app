import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/widgets/custom_app_bar.dart';
import 'package:leqaa/features/university/presentation/views/widgets/choose_type_view_body.dart';

class ChooseTypeView extends StatelessWidget {
  const ChooseTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        height: HeightValuesManagers.kHeight218,
        iconBack: true,
        logo: true,
        child: ChooseTypeViewBody(),
      ),
    );
  }
}
