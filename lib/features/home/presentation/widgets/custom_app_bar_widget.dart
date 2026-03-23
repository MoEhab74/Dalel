import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            // Handle drawer tap
          },
          child: SvgPicture.asset("assets/images/drawer.svg"),
        ),
        Text(
          AppStrings.appName,
          style: AppTextStyles.pacifico400Style64.copyWith(fontSize: 22),
        ),
      ],
    );
  }
}
