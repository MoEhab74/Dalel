import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/forgot_password_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splash/presentation/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RoutesGenerator {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.splashRoute,
    routes: [
      // Define your routes here
      GoRoute(
        path: AppRoutes.splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.homeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoutes.onBoardingRoute,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: AppRoutes.signUpRoute,
        builder: (context, state) => BlocProvider(
          // To avoid exceptions if the cubit closed
          create: (context) => AuthCubit(),
          child: const SignUpView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signInRoute,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignInView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.forgotPasswordRoute,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const ForgotPasswordView(),
        ),
      ),
    ],
  );
}
