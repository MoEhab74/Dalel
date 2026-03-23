import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header.dart';
import 'package:dalel/features/home/presentation/widgets/historical_character_list_view.dart';
import 'package:flutter/material.dart';

class HistoricalCharacters extends StatelessWidget {
  const HistoricalCharacters({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalCharacters),
        const SizedBox(height: 16),
        const CustomCategoryListView(),
        const SizedBox(height: 32),
      ],
    );
  }
}