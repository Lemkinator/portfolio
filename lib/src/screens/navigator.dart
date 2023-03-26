import 'package:flutter/material.dart';
import 'home.dart';
import '../data/constants.dart';
import '../routing.dart';
import '../widgets/fade_transition_page.dart';
import '../screens.dart';

/// Builds the top-level navigator for the app. The pages to display are based
/// on the `routeState` that was parsed by the TemplateRouteParser.
class HomeNavigator extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final bool useLightMode;
  final ColorSeed colorSelected;
  final void Function(bool) handleBrightnessChange;
  final void Function(int) handleColorSelect;

  const HomeNavigator({
    super.key,
    required this.navigatorKey,
    required this.useLightMode,
    required this.colorSelected,
    required this.handleBrightnessChange,
    required this.handleColorSelect,
  });

  @override
  State<HomeNavigator> createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  final _scaffoldKey = const ValueKey('App scaffold');
  final _appDetailsKey = const ValueKey('App screen');
  final _nakbuchDetailsKey = const ValueKey('Nakbuch screen');
  final _studiportalDetailsKey = const ValueKey('Studiportal screen');
  final _sudokuDetailsKey = const ValueKey('Sudoku screen');
  final _mediaDetailsKey = const ValueKey('Media screen');

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context);
    final pathTemplate = routeState.route.pathTemplate;

    ValueKey<String>? key;
    StatelessWidget? appScreen;
    switch (pathTemplate) {
      case '/apps/nakbuch':
        appScreen = const NAKBuchScreen();
        key = _appDetailsKey;
        break;
      case '/apps/studiportal':
        appScreen = const StudiportalScreen();
        key = _appDetailsKey;
        break;
      case '/apps/sudoku':
        appScreen = const SudokuScreen();
        key = _appDetailsKey;
        break;
    }
    StatelessWidget? mediaScreen;
    switch (pathTemplate) {
      case '/media/light-utopia':
        mediaScreen = const LightUtopiaScreen();
        key = _mediaDetailsKey;
        break;
      case '/media/accelerate':
        mediaScreen = const AccelerateScreen();
        key = _mediaDetailsKey;
        break;
    }
    StatelessWidget? privacyPolicyScreen;
    switch (pathTemplate) {
      case '/apps/nakbuch/privacy-policy':
        privacyPolicyScreen = const NAKBuchPrivacyPolicyScreen();
        key = _nakbuchDetailsKey;
        break;
      case '/apps/studiportal/privacy-policy':
        privacyPolicyScreen = const StudiportalPrivacyPolicyScreen();
        key = _studiportalDetailsKey;
        break;
      case '/apps/sudoku/privacy-policy':
        privacyPolicyScreen = const SudokuPrivacyPolicyScreen();
        key = _sudokuDetailsKey;
        break;
    }

    return Navigator(
      key: widget.navigatorKey,
      onPopPage: (route, dynamic result) {
        // When a page that is stacked on top of the scaffold is popped, display
        // the /books or /authors tab in HomeScaffold.
        if (route.settings is Page && (route.settings as Page).key == _appDetailsKey) {
          routeState.go('/apps');
        }
        if (route.settings is Page && (route.settings as Page).key == _mediaDetailsKey) {
          routeState.go('/media');
        }
        if (route.settings is Page && (route.settings as Page).key == _nakbuchDetailsKey) {
          routeState.go('/apps/nakbuch');
        }
        if (route.settings is Page && (route.settings as Page).key == _studiportalDetailsKey) {
          routeState.go('/apps/studiportal');
        }
        if (route.settings is Page && (route.settings as Page).key == _sudokuDetailsKey) {
          routeState.go('/apps/sudoku');
        }

        return route.didPop(result);
      },
      pages: [
        ...[
          // Display the app
          FadeTransitionPage<void>(
            key: _scaffoldKey,
            child: HomeScaffold(
                useLightMode: widget.useLightMode,
                colorSelected: widget.colorSelected,
                handleBrightnessChange: widget.handleBrightnessChange,
                handleColorSelect: widget.handleColorSelect,
            ),
          ),
          // Add an additional page to the stack if the user is viewing an app or media
          if (appScreen != null)
            MaterialPage<void>(
              key: key,
              child: appScreen,
            ),
          if (mediaScreen != null)
            MaterialPage<void>(
              key: key,
              child: mediaScreen
            ),
          if (privacyPolicyScreen != null)
            MaterialPage<void>(
              key: key,
              child: privacyPolicyScreen
            ),
        ],
      ],
    );
  }
}
