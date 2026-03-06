import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        AppStrings.skip,
        style: AppTextStyles.poppins500Style24.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}