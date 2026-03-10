import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        side: BorderSide(color: AppColors.onBackgroundGray, width: 0.5),
      ),
      value: isChecked,
      checkColor: AppColors.secondaryColor,
      fillColor: isChecked
          ? WidgetStateProperty.all(AppColors.primaryColor)
          : WidgetStateProperty.all(AppColors.backgroundColor),
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
    );
  }
}
