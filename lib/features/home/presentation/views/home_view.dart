import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/ancient_wars_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/historical_characters_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/historical_periods_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/home_app_bar_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              // AppBar Section
              SliverToBoxAdapter(child: const HomeAppBar()),
              // Historical Periods Section
              SliverToBoxAdapter(child: const HistoricalPeriods()),
              // Historical Characters Section
              SliverToBoxAdapter(child: const HistoricalCharacters()),
              // Ancient Wars Section
              SliverToBoxAdapter(child: const AncientWars()),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> wars = [Assets.imagesWar, Assets.imagesWar2, Assets.imagesWar3];
