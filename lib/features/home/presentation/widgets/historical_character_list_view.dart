import 'package:dalel/features/home/presentation/widgets/custom_historical_character.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersListView extends StatelessWidget {
  const HistoricalCharactersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomHistoricalCharacter(characterName: "Saladin");
        },
      ),
    );
  }
}
