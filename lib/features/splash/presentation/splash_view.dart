import 'package:dalel/core/routes/app_routes.dart';
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
      // Navigate to the next screen after the delay
      GoRouter.of(
        context,
      ).pushReplacement(AppRoutes.onBoarding1Route); // Replace with your next screen route
    });
  }
