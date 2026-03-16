import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginBannerWidget extends StatelessWidget {
  const LoginBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              AppStrings.appName,
              style: AppTextStyles.saira700Style32,
            ),
          ),
          // SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: SvgPicture.asset(
                  Assets.imagesPyramids,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  Assets.imagesMosque,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
