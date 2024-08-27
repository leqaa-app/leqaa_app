import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/university/presentation/views/widgets/custom_selected_choose_type.dart';

class ChooseTypeViewBody extends StatelessWidget {
  const ChooseTypeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'اختر شخصيتك',
                style: Styles.styleBold18
                    .copyWith(color: ColorManager.navyBlueColor),
              ),
              const SizedBox(height: 16),
              Text(
                'هل أنت طالب تبحث عن فرص جديدة أم تمثل مؤسسة\n تبحث عن نشر فعالياتك؟',
                textAlign: TextAlign.end,
                style: Styles.styleRegular14.copyWith(
                  color: ColorManager.lightGrayColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const CustomSelectedChooseType(),
          const SizedBox(height: 24),
          CustomSubmitButton(
            onPressed: () {},
            titleButton: 'تأكيد',
          ),
        ],
      ),
    );
  }
}

// class CustomSelectedChooseType extends StatefulWidget {
//   const CustomSelectedChooseType({super.key});

//   @override
//   State<CustomSelectedChooseType> createState() =>
//       _CustomSelectedChooseTypeState();
// }

// class _CustomSelectedChooseTypeState extends State<CustomSelectedChooseType> {
//   @override
//   Widget build(BuildContext context) {
//     bool isSelected = true;

//     void toggleSelection() {
//       setState(() {
//         isSelected = !isSelected;
//       });
//     }

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CustomChooseTypeButton(
//           image: Assets.imagesOrganizer,
//           title: 'المنظم',
//           isSelected: !isSelected,
//           onTap: toggleSelection,
//         ),
//         const SizedBox(width: 36),
//         CustomChooseTypeButton(
//           image: Assets.imagesStudent,
//           title: 'طالب / خريج',
//           isSelected: isSelected,
//           onTap: toggleSelection,
//         ),
//       ],
//     );
//   }
// }
