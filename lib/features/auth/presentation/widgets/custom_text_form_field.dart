import 'dart:developer';

import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.lableText,
    this.isPasswordField = false,
    this.bottomPadding,
    this.onChanged,
    this.onFieldSubmitted,
  });
  final String lableText;
  final bool isPasswordField;
  final double? bottomPadding;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        log('Widget has been rebuild');
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        bool isPasswordVisible = authCubit.isPasswordVisible;
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ).copyWith(bottom: bottomPadding ?? 0),
          child: TextFormField(
            obscureText: isPasswordField ? !isPasswordVisible : false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter $lableText';
              }
              return null;
            },
            onChanged: onChanged,
            onFieldSubmitted: onFieldSubmitted,
            style: AppTextStyles.poppins400Style16,
            decoration: InputDecoration(
              suffixIcon: isPasswordField
                  ? IconButton(
                      color: AppColors.primaryColor,
                      onPressed: () {
                        authCubit.togglePasswordVisibility();
                      },
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : null,
              labelText: lableText,
              labelStyle: AppTextStyles.poppins500Style16.copyWith(
                fontSize: 18,
              ),
              border: getBorderStyle(),
              enabledBorder: getBorderStyle(),
              focusedBorder: getBorderStyle(),
            ),
          ),
        );
      },
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.gray, width: 1),
  );
}
