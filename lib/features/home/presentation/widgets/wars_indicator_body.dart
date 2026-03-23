import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WarsIndicatorBody extends StatelessWidget {
  const WarsIndicatorBody({
    super.key,
    required this.warImage,
    required this.controller,
  });
  final String warImage;
  final PageController controller;
  static const double _imageHeight = 250;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _imageHeight,
      child: Stack(
        children: [
          Container(
            height: _imageHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(warImage),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: AppColors.gray.withValues(alpha: 0.5),
                  spreadRadius: -1,
                  blurRadius: 12,
                  offset: const Offset(
                    0,
                    8,
                  ), // keeps shadow centered under the card
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Align(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                controller: controller, 
                count: wars.length,
                effect: SlideEffect(
                  activeDotColor: AppColors.backgroundColor,
                  dotColor: AppColors.gray,
                  dotWidth: 10,
                  dotHeight: 10,
                  radius: 5,
                ),
                onDotClicked: (index) {
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
