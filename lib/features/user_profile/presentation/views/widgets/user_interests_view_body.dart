import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/styles.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/custom_submit_button.dart';
import 'package:leqaa/features/reset_password/presentation/views/widgets/custom_show_dialog.dart';
import 'package:leqaa/features/user_profile/presentation/views/widgets/custom_choose_interests.dart';

class UserInterestsViewBody extends StatefulWidget {
  const UserInterestsViewBody({super.key});

  @override
  State<UserInterestsViewBody> createState() => _UserInterestsViewBodyState();
}

class _UserInterestsViewBodyState extends State<UserInterestsViewBody> {
  final List<String> interests = [
    "الهندسه",
    "العلوم",
    "الطب",
    "الرياضه",
    "التكنولوجيا",
    "الزراعه",
    "الثقافه والفنون",
    "الحقوق والقانون",
    "تطوير ذات"
  ];

  List<bool> selectedInterests = [];

  @override
  void initState() {
    super.initState();
    selectedInterests = List.filled(interests.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'اختر اهتماماتك',
            style: Styles.styleBold18.copyWith(
              color: ColorManager.navyBlueColor,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            alignment: WrapAlignment.end,
            runAlignment: WrapAlignment.end,
            children: interests
                .map(
                  (interest) => CustomChooseInterests(
                    isSelected: selectedInterests[interests.indexOf(interest)],
                    title: interest,
                    onTap: () {
                      setState(() {
                        selectedInterests[interests.indexOf(interest)] =
                            !selectedInterests[interests.indexOf(interest)];
                      });
                    },
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 24),
          CustomSubmitButton(
            onPressed: () => customShowDialog(
              context,
              onPressed: () {},
              title: '!تهانينا',
              description:
                  'حسابك جاهز للاستخدام. ستتم إعادة توجيهك\n .إلى الصفحة الرئيسية بعد الضغط علي تم',
              delete: 'تم',
            ),
            titleButton: 'تأكيد',
          ),
        ],
      ),
    );
  }

  void customShowDialog(
    BuildContext context, {
    required void Function() onPressed,
    required String title,
    required String description,
    required String delete,
    String? cancel,
    Color? backgroundColor,
    bool? isReturnBack,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomShowDialog(
          onPressedDelete: onPressed,
          title: title,
          description: description,
          cancel: cancel,
          backgroundColor: backgroundColor,
          isReturnBack: isReturnBack,
          delete: delete,
          iconCircleAvatare: Assets.imagesCongratulations,
        );
      },
    );
  }
}
