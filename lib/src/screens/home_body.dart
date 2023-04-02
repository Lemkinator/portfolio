import 'package:flutter/material.dart';

import '../screens.dart';
import '../routing.dart';
import '../widgets/fade_transition_page.dart';

/// Displays the contents of the body of [HomeScaffold]
class HomeScaffoldBody extends StatelessWidget {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  const HomeScaffoldBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var currentRoute = RouteStateScope.of(context).route;

    // A nested Router isn't necessary because the back button behavior doesn't
    // need to be customized.
    return Navigator(
      key: navigatorKey,
      onPopPage: (route, dynamic result) => route.didPop(result),
      pages: [
        if (currentRoute.pathTemplate == '/')
          const FadeTransitionPage<void>(
            key: ValueKey('explore'),
            child: ExploreScreen(),
          )
        else if (currentRoute.pathTemplate == '/about')
          FadeTransitionPage<void>(
            key: const ValueKey('about'),
            child: AboutScreen(),
          )
        else if (currentRoute.pathTemplate == '/apps')
          const FadeTransitionPage<void>(
            key: ValueKey('apps'),
            child: ProjectsScreen(category: 'apps'),
          )
        else if (currentRoute.pathTemplate == '/media')
          const FadeTransitionPage<void>(
            key: ValueKey('media'),
            child: ProjectsScreen(category: 'media'),
          )

        // Avoid building a Navigator with an empty `pages` list when the RouteState is set to an unexpected path
        //
        // Since RouteStateScope is an InheritedNotifier, any change to the
        // route will result in a call to this build method, even though this
        // widget isn't built when those routes are active.
        else
          FadeTransitionPage<void>(
            key: const ValueKey('empty'),
            child: Container(),
          ),
      ],
    );
  }
}
