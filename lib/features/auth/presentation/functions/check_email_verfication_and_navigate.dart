import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void checkEmailVerificationAndNavigate(BuildContext context) {
    getIt<FirebaseAuth>().currentUser!.emailVerified
        ? GoRouter.of(context).pushReplacement(AppRoutes.bottomNavigationBarRoute)
        : showFlutterToast(
            'Please verify your email first!',
            AppColors.primaryColor,
          );
  }