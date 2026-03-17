import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void checkUserAuthenticationAndEmailVerification(BuildContext context) {
  if (getIt<FirebaseAuth>().currentUser != null) {
    getIt<FirebaseAuth>().currentUser!.emailVerified
        ? GoRouter.of(context).pushReplacement(AppRoutes.homeRoute)
        : GoRouter.of(context).pushReplacement(AppRoutes.signInRoute);
  } else {
    GoRouter.of(context).pushReplacement(AppRoutes.signInRoute);
  }
}