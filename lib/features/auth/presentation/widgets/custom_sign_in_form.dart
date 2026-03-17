import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentation/widgets/forget_password_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInFailureState) {
          showFlutterToast(state.errorMessage, Colors.red);
        } else if (state is SignInSuccessState) {
          showFlutterToast('User signed in successfully', Colors.green);
          // Pushreplacement to home view
          GoRouter.of(context).pushReplacement(AppRoutes.homeRoute);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.signInFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  lableText: AppStrings.emailAddress,
                  bottomPadding: 24,
                  onChanged: (emailAddress) {
                    // Update email address in the cubit
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                CustomTextFormField(
                  lableText: AppStrings.password,
                  isPasswordField: true,
                  bottomPadding: 8,
                  onChanged: (password) {
                    // Update password in the cubit
                    authCubit.password = password;
                  },
                ),
                // Add forgot password text button here
                ForgetPasswordTextButton(),
                const SizedBox(height: 170),
                state is SignInLoadingState
                    ? CircularProgressIndicator(color: AppColors.primaryColor)
                    : AppButton(
                        text: AppStrings.signIn,
                        onPressed: () {
                          if (authCubit.signInFormKey.currentState!
                              .validate()) {
                            authCubit.signInWithEmailAndPassword();
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
