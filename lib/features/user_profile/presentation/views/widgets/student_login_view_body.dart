import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/user_profile/presentation/views/widgets/custom_student_form_fields.dart';

class StudentLoginViewBody extends StatelessWidget {
  const StudentLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'ادخل البيانات الشخصيه',
            style:
                Styles.styleBold18.copyWith(color: ColorManager.navyBlueColor),
          ),
          const CustomStudentFormFields(),
          CustomSubmitButton(
            onPressed: () {
              GoRouter.of(context).push(StringManager.kUserInterestsView);
            },
            titleButton: 'تأكيد',
          ),
        ],
      ),
    );
  }
}
