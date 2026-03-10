import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: AppStrings.iHaveAgreeToOur,
        style: AppTextStyles.poppins400Style16.copyWith(
          fontSize: 14,
          color: AppColors.onBackgroundGray,
        ),
        children: [
          TextSpan(
            text: AppStrings.termsAndCondition,
            style: AppTextStyles.poppins400Style16.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.onBackgroundGray,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}

