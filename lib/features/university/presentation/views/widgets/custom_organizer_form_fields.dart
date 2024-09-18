import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_form_text_field.dart';

class CustomOrganizerFormFields extends StatelessWidget {
  const CustomOrganizerFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          const CustomFormTextField(
            hinText: 'اسم الجامعه',
            icon: Assets.imagesTeacher,
          ),
          const SizedBox(height: 16),
          const CustomFormTextField(
            hinText: 'التخصص',
            icon: Assets.imagesBook,
          ),
          const SizedBox(height: 16),
          const CustomFormTextField(
            hinText: 'ايميل المنظم',
            icon: Assets.imagesEmail,
          ),
          const SizedBox(height: 16),
          const CustomFormTextField(
            hinText: 'طالب / خريج',
            icon: Assets.imagesTeacher,
          ),
          const SizedBox(height: 16),
          const CustomFormTextField(
            hinText: 'رقم الهاتف',
            icon: Assets.imagesPhone,
          ),
          const SizedBox(height: 16),
          CustomFormTextField(
            hinText: 'صوره كارنيه الجامعه',
            icon: Assets.imagesGalleryAdd,
            prefixIcon: GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.imagesDirectSend,
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
