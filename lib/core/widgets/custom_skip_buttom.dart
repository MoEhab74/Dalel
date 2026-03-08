import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({super.key, this.controller});
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          // Handle skip action
          if (controller != null) {
            controller!.animateToPage(
              2,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        child: Text(
          AppStrings.skip,
          style: AppTextStyles.poppins500Style24.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
