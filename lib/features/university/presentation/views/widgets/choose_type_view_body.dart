import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/university/presentation/views/widgets/custom_selected_choose_type.dart';

class ChooseTypeViewBody extends StatelessWidget {
  ChooseTypeViewBody({super.key});

  final ValueNotifier<bool> isStudentSelected = ValueNotifier<bool>(true);

  void _onConfirm(BuildContext context) {
    if (isStudentSelected.value) {
      // الانتقال إلى صفحة الطالب.
      GoRouter.of(context).push(
          StringManager.kStudentView); // استخدم المسار المناسب لصفحة الطالب.
    } else {
      // الانتقال إلى صفحة المنظم.
      GoRouter.of(context).push(
          StringManager.kOrganizerView); // استخدم المسار المناسب لصفحة المنظم.
    }
  }

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
          CustomSelectedChooseType(
            onSelectionChanged: (newSelection) {
              isStudentSelected.value = newSelection;
            },
          ),
          const SizedBox(height: 24),
          CustomSubmitButton(
            onPressed: () => _onConfirm(context),
            titleButton: 'تأكيد',
          ),
        ],
      ),
    );
  }
}
