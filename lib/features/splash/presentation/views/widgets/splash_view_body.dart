import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/assets.dart';
import 'package:leqaa/core/utils/height_values_managers.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/core/utils/width_values_managers.dart';
import 'package:leqaa/main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInExpo,
    );

    animation.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    animationController.forward();
    Future.delayed(const Duration(seconds: 2)).then((value) => context.go(
        isViewed != 0
            ? StringManager.kOnBoardingView
            : StringManager.kLoginView));

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        Assets.imagesLeqaaLogo,
        height: animation.value * HeightValuesManagers.kHeight113,
        width: animation.value * WidthValuesManagers.kWidth152,
      ),
    );
  }
}
