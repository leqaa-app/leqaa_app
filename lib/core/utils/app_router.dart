import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:leqaa/features/auth/presentation/views/login_view.dart';
import 'package:leqaa/features/auth/presentation/views/sign_up_view.dart';
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
        path: StringManager.kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: StringManager.kSignUpView,
        builder: (context, state) => const SignUpView(),
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
