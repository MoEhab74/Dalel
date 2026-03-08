import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/routes/routes_generator.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: RoutesGenerator.router,
    );
  }
}

