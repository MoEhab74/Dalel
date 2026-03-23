import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomHistoricalTopic extends StatelessWidget {
  const CustomHistoricalTopic({super.key, required this.topicTitle});
  final String topicTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 175,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColors.gray.withValues(alpha: 0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 64,
                height: 48,
                child: Text(
                  textAlign: TextAlign.center,
                  topicTitle,
                  style: AppTextStyles.poppins500Style16.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Image.asset(Assets.imagesEgypt, width: 48, height: 64),
            ],
          ),
        ),
      ),
    );
  }
}