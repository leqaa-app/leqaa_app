import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/app_router.dart';
import 'package:leqaa/core/utils/string_manage.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt(StringManager.kOnBoardingView);

  runApp(const LeqaaApp());
}

class LeqaaApp extends StatelessWidget {
  const LeqaaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Leqaa',
      routerConfig: AppRouter.router,
    );
  }
}
