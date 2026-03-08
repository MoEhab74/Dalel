import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomAuthAction extends StatelessWidget {
  const CustomAuthAction({super.key, required this.actionText, this.onPressed});
  final String actionText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: Text(
        actionText,
        style: AppTextStyles.poppins500Style24.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF6F6460),
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
