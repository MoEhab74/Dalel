import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header.dart';
import 'package:dalel/features/home/presentation/widgets/wars_page_view.dart';
import 'package:flutter/material.dart';

class AncientWars extends StatelessWidget {
  const AncientWars({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.wars),
        const SizedBox(height: 16),
        const WarsPageView(),
      ],
    );
  }
}
