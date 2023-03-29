import 'package:flutter/material.dart';

import '../data.dart';
import '../localization.dart';
import '../widgets.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final headlineLarge = textTheme.headlineLarge?.copyWith(
      color: Theme.of(context).colorScheme.secondary,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Text(
                'LEONARD LEMKE',
                style: textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Text(
                'TECHNOLOGY',
                style: textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 10),
              child: Text(
                S.of(context).projects,
                style: headlineLarge,
              ),
            ),
          ),
          ProjectGrid(projects: libraryInstance.categories),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 10),
              child: Text(
                S.of(context).allProjects,
                style: headlineLarge,
              ),
            ),
          ),
          ProjectGrid(projects: libraryInstance.allProjects),
        ],
      ),
    );
  }
}
