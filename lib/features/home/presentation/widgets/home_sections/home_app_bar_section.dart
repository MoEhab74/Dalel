import 'package:dalel/features/home/presentation/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const CustomAppBar(),
        const SizedBox(height: 32),
      ],
    );
  }
}