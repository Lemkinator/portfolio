import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';

typedef NavigationTypeResolver = NavigationType Function(BuildContext context);

enum NavigationType {
  bottom,
  rail,
  extendedRail,
}

class AdaptiveNavigationScaffold extends StatelessWidget {
  const AdaptiveNavigationScaffold({
    Key? key,
    this.appBar,
    required this.body,
    required this.selectedIndex,
    required this.destinations,
    required this.trailing,
    required this.onDestinationSelected,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? trailing;
  final int selectedIndex;
  final List<NavigationDestination> destinations;
  final ValueChanged<int>? onDestinationSelected;

  List<NavigationRailDestination> navRailDestinations() => destinations
      .map(
        (destination) => NavigationRailDestination(
          icon: Tooltip(
            message: destination.label,
            child: destination.icon,
          ),
          selectedIcon: Tooltip(
            message: destination.label,
            child: destination.selectedIcon,
          ),
          label: Text(destination.label),
        ),
      )
      .toList();

  NavigationType _defaultNavigationTypeResolver(BuildContext context) {
    if (_isLargeScreen(context)) {
      return NavigationType.extendedRail;
    } else if (_isMediumScreen(context)) {
      return NavigationType.rail;
    } else {
      return NavigationType.bottom;
    }
  }

  Widget _buildBottomNavigationScaffold() {
    return Scaffold(
      key: key,
      body: body,
      appBar: appBar,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: destinations,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }

  Widget _buildNavigationRailScaffold(bool extended) {
    return Scaffold(
      key: key,
      appBar: appBar,
      body: Row(
        children: [
          NavigationRail(
            extended: extended,
            destinations: navRailDestinations(),
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            trailing: trailing,
          ),
          const VerticalDivider(
            width: 1,
            thickness: 1,
          ),
          Expanded(
            child: body,
          ),
        ],
      ),
      primary: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_defaultNavigationTypeResolver(context)) {
      case NavigationType.bottom:
        return _buildBottomNavigationScaffold();
      case NavigationType.rail:
        return _buildNavigationRailScaffold(false);
      case NavigationType.extendedRail:
        return _buildNavigationRailScaffold(true);
    }
  }
}

bool _isLargeScreen(BuildContext context) => getWindowType(context) >= AdaptiveWindowType.large;

bool _isMediumScreen(BuildContext context) => getWindowType(context) == AdaptiveWindowType.medium;
