import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:dalel/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/login_banner_widget.dart';
import 'package:dalel/core/widgets/page_title_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: LoginBannerWidget()),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverToBoxAdapter(
            child: PageTitleTextWidget(text: AppStrings.welcomeBack),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 56)),
          SliverToBoxAdapter(child: CustomSignInForm()),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.center,
              child: HaveAnAccountWidget(
                text1: AppStrings.dontHaveAnAccount,
                text2: AppStrings.signUp,
                onTap: () =>
                    GoRouter.of(context).pushReplacement(AppRoutes.signUpRoute),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
