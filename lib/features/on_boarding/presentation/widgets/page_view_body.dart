import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Container(
          height: 290,
          width: 345,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesOnBoarding1),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 24),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.secondaryColor,
            dotWidth: 10,
            dotHeight: 10,
            radius: 5,
          ), // your preferred effect
          onDotClicked: (index) {},
        ),
        const SizedBox(height: 32),
        Text(
          'Explore the history with dalel in smart way',
          textAlign: TextAlign.center,
          style: AppTextStyles.poppins500Style24.copyWith(
            fontWeight: FontWeight.w700,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 16),
        Text(
          'Using our app’s history libraries you can find many historical periods ',
          textAlign: TextAlign.center,
          style: AppTextStyles.poppins500Style24.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        
      ],
    );
  }
}
