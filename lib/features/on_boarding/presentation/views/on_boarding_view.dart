import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/core/widgets/custom_skip_buttom.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 32),
              CustomSkipButton(),
              OnBoardingBody(),
              SizedBox(height: 140),
              AppButton(text: 'Next',),
            ],
          ),
        ),
      ),
    );
  }
}


