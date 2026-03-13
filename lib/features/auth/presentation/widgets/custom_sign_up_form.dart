import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showFlutterToast('User signed up successfully', Colors.green);
          // Pushreplacement to login view
          // GoRouter.of(context).pushReplacement(AppRoutes.signInRoute);
        } else if (state is SignUpFailureState) {
          showFlutterToast(state.errorMessage, Colors.red);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.formKey,
          child: Column(
            children: [
              CustomTextFormField(
                lableText: AppStrings.fristName,
                bottomPadding: 24,
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              CustomTextFormField(
                lableText: AppStrings.lastName,
                bottomPadding: 24,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFormField(
                lableText: AppStrings.emailAddress,
                bottomPadding: 24,
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              CustomTextFormField(
                lableText: AppStrings.password,
                isPasswordField: true,
                bottomPadding: 16,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              TermsAndConditions(),
              SizedBox(height: 170),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(color: AppColors.primaryColor)
                  : AppButton(
                      backgroundColor:
                          authCubit.termsAndConditionsCheckBoxValue == false
                          ? AppColors.gray
                          : null,
                      text: AppStrings.signUp,
                      onPressed: () {
                        if (authCubit.termsAndConditionsCheckBoxValue == true) {
                          if (authCubit.formKey.currentState!.validate()) {
                            authCubit.signUpWithEmailAndPassword();
                          }
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
