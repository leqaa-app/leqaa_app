import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/features/university/presentation/views/widgets/custom_choose_type_button.dart';

class CustomSelectedChooseType extends StatefulWidget {
  const CustomSelectedChooseType({super.key, required this.onSelectionChanged});

  final Function(bool isStudentSelected) onSelectionChanged;

  @override
  State<CustomSelectedChooseType> createState() =>
      _CustomSelectedChooseTypeState();
}

class _CustomSelectedChooseTypeState extends State<CustomSelectedChooseType> {
  bool isSelected = true;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
    widget.onSelectionChanged(isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomChooseTypeButton(
          image: Assets.imagesOrganizer,
          title: 'المنظم',
          isSelected: !isSelected,
          onTap: toggleSelection,
        ),
        const SizedBox(width: 36),
        CustomChooseTypeButton(
          image: Assets.imagesStudent,
          title: 'طالب / خريج',
          isSelected: isSelected,
          onTap: toggleSelection,
        ),
      ],
    );
  }
}
