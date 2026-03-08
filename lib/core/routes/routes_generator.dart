import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splash/presentation/splash_view.dart';
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
        path: AppRoutes.onBoarding1Route,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: AppRoutes.signUpRoute,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: AppRoutes.signInRoute,
        builder: (context, state) => const SignInView(),
      ),
    ],
  );
}
