import 'package:flutter/material.dart';

import '../data.dart';
import '../routing.dart';
import '../widgets.dart';
import 'home_body.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({
    super.key,
    required this.useLightMode,
    required this.colorSelected,
    required this.handleBrightnessChange,
    required this.handleColorSelect,
  });

  final bool useLightMode;
  final ColorSeed colorSelected;
  final void Function(bool useLightMode) handleBrightnessChange;
  final void Function(int value) handleColorSelect;

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context);
    final selectedIndex = _getSelectedIndex(routeState.route.pathTemplate);

    return Scaffold(
      appBar: AppBar(
          title: Text('Leonard Lemke${_getSelectedTitle(routeState.route.pathTemplate)}'),
          actions: appBarActions(
            context,
            colorSelected,
            handleBrightnessChange,
            handleColorSelect,
          )),
      body: AdaptiveNavigationScaffold(
        selectedIndex: selectedIndex,
        body: const HomeScaffoldBody(),
        onDestinationSelected: (idx) {
          if (idx == 0) routeState.go('/');
          if (idx == 1) routeState.go('/about');
          if (idx == 2) routeState.go('/apps');
          if (idx == 3) routeState.go('/media');
        },
        destinations: appBarDestinations,
        trailing: NavigationTrailing(
          useLightMode: useLightMode,
          colorSelected: colorSelected,
          handleBrightnessChange: handleBrightnessChange,
          handleColorSelect: handleColorSelect,
        ),
      ),
    );
  }

  int _getSelectedIndex(String pathTemplate) {
    if (pathTemplate == '/about') return 1;
    if (pathTemplate.startsWith('/apps')) return 2;
    if (pathTemplate.startsWith('/media')) return 3;
    return 0;
  }

  String _getSelectedTitle(String pathTemplate) {
    if (pathTemplate == '/about') return ' - About';
    if (pathTemplate.startsWith('/apps')) return ' - Apps';
    if (pathTemplate.startsWith('/media')) return ' - Media';
    return '';
  }
}

const List<NavigationDestination> appBarDestinations = [
  NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.explore_outlined),
    label: 'Explore',
    selectedIcon: Icon(Icons.explore),
  ),
  NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.info_outlined),
    label: 'About',
    selectedIcon: Icon(Icons.info),
  ),
  NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.apps_outlined),
    label: 'Apps',
    selectedIcon: Icon(Icons.apps),
  ),
  NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.video_collection_outlined),
    label: 'Media',
    selectedIcon: Icon(Icons.video_collection),
  )
];
