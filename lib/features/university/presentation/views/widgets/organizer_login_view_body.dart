import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/university/presentation/views/widgets/custom_organizer_form_fields.dart';

class OrganizerLoginViewBody extends StatelessWidget {
  const OrganizerLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'ادخال بيانات المنظم',
            style:
                Styles.styleBold18.copyWith(color: ColorManager.navyBlueColor),
          ),
          const CustomOrganizerFormFields(),
          CustomSubmitButton(
            onPressed: () {},
            titleButton: 'تأكيد',
          ),
        ],
      ),
    );
  }
}
