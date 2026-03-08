import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/app_buttom.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/custom_auth_action.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetButtoms extends StatelessWidget {
  const GetButtoms({
    super.key,
    required PageController controller,
    required int currentIndex,
  }) : _controller = controller,
       _currentIndex = currentIndex;
  final PageController _controller;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return _currentIndex == onBoardingData.length - 1
        ? Column(
            children: [
              AppButton(
                text: AppStrings.createAccount,
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRoutes.signUpRoute);
                },
              ),
              // SizedBox(height: 8),
              CustomAuthAction(
                actionText: AppStrings.loginNow,
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRoutes.signInRoute);
                },
              ),
            ],
          )
        : AppButton(
            text: AppStrings.next,
            onPressed: () {
              _controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          );
  }
}
