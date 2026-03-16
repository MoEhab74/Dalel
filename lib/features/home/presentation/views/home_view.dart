import 'dart:developer';

import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
        actions: [
          IconButton(
            onPressed: () {
              getIt<FirebaseAuth>().signOut();
              log('User signed out successfully');
              GoRouter.of(context).pushReplacement(AppRoutes.signInRoute);
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),
    );
  }
}
