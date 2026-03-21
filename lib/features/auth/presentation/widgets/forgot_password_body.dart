import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/page_title_text_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_forgot_password_form.dart';
import 'package:dalel/features/auth/presentation/widgets/forgot_password_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 108),
          const PageTitleTextWidget(text: 'Forgot Password'),
          const SizedBox(height: 40),
          SvgPicture.asset(
            'assets/images/password.svg',
            width: 235,
            height: 235,
          ),
          const SizedBox(height: 24),
          ForgotPasswordSubTitle(
            subTitle: AppStrings
                .enterYourRegisteredEmailBelowToReceivePasswordResetInstructions,
          ),
          const SizedBox(height: 40),
          CustomForgotPasswordForm(),
        ],
      ),
    );
  }
}
