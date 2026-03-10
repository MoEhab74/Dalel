import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152)),
            SliverToBoxAdapter(
              child: WelcomTextWidget(text: AppStrings.welcome),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 48)),
            SliverToBoxAdapter(
              child: CustomTextField(
                hintText: AppStrings.fristName,
                bottomPadding: 24,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                hintText: AppStrings.lastName,
                bottomPadding: 24,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                hintText: AppStrings.emailAddress,
                bottomPadding: 24,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                hintText: AppStrings.password,
                bottomPadding: 16,
              ),
            ),
            SliverToBoxAdapter(child: TermsAndConditions()),
            SliverToBoxAdapter(child: SizedBox(height: 170)),
            SliverToBoxAdapter(
              child: AppButton(text: AppStrings.signUp, onPressed: () {}),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: HaveAnAccountWidget(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
