import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomHistoricalCharacter extends StatelessWidget {
  const CustomHistoricalCharacter({super.key, required this.characterName});
  final String characterName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 96,
        height: 164,
        decoration: BoxDecoration(
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
        child: Column(
          children: [
            Container(
              width: 96,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ).copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero),
                image: DecorationImage(
                  image: AssetImage(Assets.imagesSalahalDin),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              characterName,
              style: AppTextStyles.poppins500Style16.copyWith(
                color: AppColors.secondaryColor,
                fontSize: 15,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
