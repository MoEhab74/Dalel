import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/page_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
    required this.controller,
    this.onPageChanged,
  });
  final PageController controller;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return PageViewBody(
            controller: controller,
            onBoardingModel: onBoardingData[index],
          );
        },
      ),
    );
  }
}
