import 'package:dalel/features/home/presentation/widgets/custom_historical_topic.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomHistoricalTopic(topicTitle: "Ancient Egypt"),
        const SizedBox(width: 16),
        CustomHistoricalTopic(topicTitle: "Islamic Era"),
      ],
    );
  }
}