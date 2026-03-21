import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/core/widgets/page_title_text_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentation/widgets/forgot_password_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 108)),
          SliverToBoxAdapter(
            child: const PageTitleTextWidget(text: 'Forgot Password'),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: SvgPicture.asset(
              'assets/images/password.svg',
              width: 235,
              height: 235,
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: ForgotPasswordSubTitle(
              subTitle: AppStrings
                  .enterYourRegisteredEmailBelowToReceivePasswordResetInstructions,
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextFormField(
                lableText: AppStrings.emailAddress,
                onChanged: (emailAddress) {},
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 160)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ).copyWith(bottom: 24),
              child: AppButton(
                text: AppStrings.sendResetPasswordLink,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
