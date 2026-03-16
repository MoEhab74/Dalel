import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:dalel/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/login_banner_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

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
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
