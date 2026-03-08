import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigationDelaye(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dalel', style: AppTextStyles.pacifico400Style64),
      ),
    );
  }
}

void navigationDelaye(BuildContext context) {
  Future.delayed(const Duration(seconds: 3), () {
    // Check if this the first time the user opens the app
    var isOnBoardingVisited =
        getIt<CacheHelper>().getDate(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited) {
      // If the user has already completed the onboarding process, navigate to the sign-in screen
      GoRouter.of(context).pushReplacement(AppRoutes.signInRoute);
    } else {
      // If the user has not completed the onboarding process, navigate to the onboarding screen
      GoRouter.of(context).pushReplacement(AppRoutes.onBoardingRoute);
    }
  });
}
