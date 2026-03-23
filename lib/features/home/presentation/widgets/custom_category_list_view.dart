import 'package:dalel/features/home/presentation/widgets/custom_category_widget.dart';
import 'package:flutter/material.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172,
      width: double.infinity,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomCategoryWidget(characterName: 'Saladin');
        },
      ),
    );
  }
}
