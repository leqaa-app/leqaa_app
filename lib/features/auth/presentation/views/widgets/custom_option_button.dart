import 'package:flutter/material.dart';
import 'package:leqaa/features/auth/presentation/views/widgets/ellipse_options.dart';

class CustomOptionButton extends StatefulWidget {
  const CustomOptionButton({super.key});

  @override
  State<CustomOptionButton> createState() => _CustomOptionButtonState();
}

class _CustomOptionButtonState extends State<CustomOptionButton> {
  int selectedOption = 0;

  void onOptionSelected(int index) {
    setState(() {
      selectedOption = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        EllipseOptions(
          text: 'أدمن',
          index: 2,
          isSelected: selectedOption == 2,
          onTap: onOptionSelected,
        ),
        const SizedBox(width: 24),
        EllipseOptions(
          text: 'كلية / جامعة',
          index: 1,
          isSelected: selectedOption == 1,
          onTap: onOptionSelected,
        ),
        const SizedBox(width: 24),
        EllipseOptions(
          text: 'طالب',
          index: 0,
          isSelected: selectedOption == 0,
          onTap: onOptionSelected,
        ),
      ],
    );
  }
}
