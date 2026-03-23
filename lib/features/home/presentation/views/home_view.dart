import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header.dart';
import 'package:dalel/features/home/presentation/widgets/custom_app_bar_widget.dart';
import 'package:dalel/features/home/presentation/widgets/historical_character_list_view.dart';
import 'package:dalel/features/home/presentation/widgets/historical_periods.dart';
import 'package:dalel/features/home/presentation/widgets/wars_page_view.dart';
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
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              SliverToBoxAdapter(child: const CustomAppBar()),
              SliverToBoxAdapter(child: const SizedBox(height: 32)),
              SliverToBoxAdapter(
                child: CustomHeaderText(text: AppStrings.historicalPeriods),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              SliverToBoxAdapter(child: const HistoricalPeriods()),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: CustomHeaderText(text: AppStrings.historicalCharacters),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              SliverToBoxAdapter(child: const HistoricalCharactersListView()),
              SliverToBoxAdapter(child: const SizedBox(height: 32)),
              SliverToBoxAdapter(
                child: CustomHeaderText(text: AppStrings.wars),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              SliverToBoxAdapter(child: const WarsPageView()),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> wars = [Assets.imagesWar, Assets.imagesWar2, Assets.imagesWar3];
