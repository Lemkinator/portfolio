import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';

import '../routing.dart';
import 'scaffold_body.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context);
    final selectedIndex = _getSelectedIndex(routeState.route.pathTemplate);

    return Scaffold(
      body: AdaptiveNavigationScaffold(
        selectedIndex: selectedIndex,
        body: const HomeScaffoldBody(),
        onDestinationSelected: (idx) {
          if (idx == 0) routeState.go('/');
          if (idx == 1) routeState.go('/about');
          if (idx == 2) routeState.go('/apps');
          if (idx == 3) routeState.go('/media');
        },
        destinations: const [
          AdaptiveScaffoldDestination(
            title: 'Explore',
            icon: Icons.explore_outlined,
          ),
          AdaptiveScaffoldDestination(
            title: 'About',
            icon: Icons.person_outline,
          ),
          AdaptiveScaffoldDestination(
            title: 'Apps',
            icon: Icons.apps_rounded,
          ),
          AdaptiveScaffoldDestination(
            title: 'Media',
            icon: Icons.video_collection_outlined,
          ),
        ],
      ),
    );
  }

  int _getSelectedIndex(String pathTemplate) {
    if (pathTemplate == '/about') return 1;
    if (pathTemplate.startsWith('/apps')) return 2;
    if (pathTemplate.startsWith('/media')) return 3;
    return 0;
  }
}
