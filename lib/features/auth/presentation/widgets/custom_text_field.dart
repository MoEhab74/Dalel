import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.bottomPadding,
      this.onChanged,
      this.onFieldSubmitted,
  });
  final String hintText;
  final double? bottomPadding;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ).copyWith(bottom: bottomPadding ?? 0),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        style: AppTextStyles.poppins400Style16,
        decoration: InputDecoration(
          // Opacity of the hint text is set to 0.02
          labelText: hintText,
          labelStyle: AppTextStyles.poppins500Style16.copyWith(fontSize: 18),
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.gray, width: 1),
  );
}
