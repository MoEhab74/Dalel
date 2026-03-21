import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // Navigate to forgot password view
          GoRouter.of(context).push(AppRoutes.forgotPasswordRoute);
        },
        child: Text(
          AppStrings.forgotPassword,
          style: AppTextStyles.poppins400Style16.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.onBackgroundGray,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
