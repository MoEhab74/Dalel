import 'package:dalel/core/routes/routes_generator.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      debugShowCheckedModeBanner: false,
      routerConfig: RoutesGenerator.router,
    );
  }
}