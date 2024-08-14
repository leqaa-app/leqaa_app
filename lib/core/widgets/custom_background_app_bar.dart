import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';

class CustomBackgroundAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomBackgroundAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: ColorManager.mainColor);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}