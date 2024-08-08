import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:leqaa/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: StringManager.kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: StringManager.kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: StringManager.kHomeView,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: const Text('Home')),
            body: const Center(child: Text('Home View Placeholder')),
          );
        },
      ),
    ],
  );
}
