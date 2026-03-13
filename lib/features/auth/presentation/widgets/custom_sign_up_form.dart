import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              CustomTextFormField(
                hintText: AppStrings.fristName,
                bottomPadding: 24,
                onChanged: (firstName) {
                  BlocProvider.of<AuthCubit>(context).firstName = firstName;
                },
              ),
              CustomTextFormField(
                hintText: AppStrings.lastName,
                bottomPadding: 24,
                onChanged: (lastName) {
                  BlocProvider.of<AuthCubit>(context).lastName = lastName;
                },
              ),
              CustomTextFormField(
                hintText: AppStrings.emailAddress,
                bottomPadding: 24,
                onChanged: (emailAddress) {
                  BlocProvider.of<AuthCubit>(context).emailAddress = emailAddress;
                },
              ),
              CustomTextFormField(
                hintText: AppStrings.password,
                bottomPadding: 16,
                onChanged: (password) {
                  BlocProvider.of<AuthCubit>(context).password = password;
                },
              ),
              TermsAndConditions(),
              SizedBox(height: 170),
              AppButton(
                text: AppStrings.signUp,
                onPressed: () {
                  // context.read will call the function in the cubit and the function will emit the states and the BlocConsumer will listen to those states and rebuild the UI accordingly
                  BlocProvider.of<AuthCubit>(context).signUpWithEmailAndPassword();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
