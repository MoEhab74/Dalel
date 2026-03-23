import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header.dart';
import 'package:dalel/features/home/presentation/widgets/historical_periods.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalPeriods),
        const SizedBox(height: 16),
        const CustomInformationWidget(),
        const SizedBox(height: 16),
      ],
    );
  }
}