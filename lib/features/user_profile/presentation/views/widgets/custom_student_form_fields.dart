import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_form_text_field.dart';

class CustomStudentFormFields extends StatelessWidget {
  const CustomStudentFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          CustomFormTextField(
            hinText: 'الاسم بالكامل',
            icon: Assets.imagesUserEdit,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'الرقم الجامعي',
            icon: Assets.imagesAward,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'الكليه ( حاسبات - هندسه - أداب...)',
            icon: Assets.imagesBook,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'طالب / خريج',
            icon: Assets.imagesTeacher,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'تاريخ الميلاد',
            icon: Assets.imagesCalendarEdit,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'الجنس',
            icon: Assets.imagesProfileTwoUsers,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'رقم الهاتف',
            icon: Assets.imagesPhone,
          ),
        ],
      ),
    );
  }
}