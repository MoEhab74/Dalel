import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: AppTextStyles.poppins400Style16.copyWith(
              fontSize: 14,
              color: AppColors.onBackgroundGray,
            ),
          ),
          TextSpan(
            text: text2,
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
