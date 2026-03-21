import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordLinkFailureState) {
          showFlutterToast(state.errorMessage, Colors.red);
        } else if (state is ResetPasswordLinkSuccessState) {
          GoRouter.of(context).pop(); // Pop back to sign in view
          showFlutterToast(
            'Reset password link sent! Check your email.',
            Colors.green,
          );
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.forgotPasswordFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  lableText: AppStrings.emailAddress,
                  bottomPadding: 180,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),

                state is ResetPasswordLinkLoadingState
                    ? CircularProgressIndicator(color: AppColors.primaryColor)
                    : AppButton(
                        text: AppStrings.sendResetPasswordLink,
                        onPressed: () async {
                          if (authCubit.forgotPasswordFormKey.currentState!
                              .validate()) {
                            await authCubit.resetPasswordLink();
                          }
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
