import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_form_text_field.dart';

class CustomOrganizerFormFields extends StatelessWidget {
  const CustomOrganizerFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          CustomFormTextField(
            hinText: 'اسم الجامعه',
            icon: Assets.imagesTeacher,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'التخصص',
            icon: Assets.imagesBook,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'ايميل المنظم',
            icon: Assets.imagesEmail,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'طالب / خريج',
            icon: Assets.imagesTeacher,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'رقم الهاتف',
            icon: Assets.imagesPhone,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'صوره كارنيه الجامعه',
            icon: Assets.imagesGalleryAdd,
          ),
        ],
      ),
    );
  }
}
