import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'routing.dart';
import 'screens/navigator.dart';
import 'data/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  late final RouteState _routeState;
  late final SimpleRouterDelegate _routerDelegate;
  late final TemplateRouteParser _routeParser;

  bool useMaterial3 = true;
  ThemeMode themeMode = ThemeMode.system;
  ColorSeed colorSelected = ColorSeed.deepOrange;

  bool get useLightMode {
    switch (themeMode) {
      case ThemeMode.system:
        return SchedulerBinding.instance.window.platformBrightness == Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  void handleBrightnessChange(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void handleColorSelect(int value) {
    setState(() {
      colorSelected = ColorSeed.values[value];
    });
  }

  @override
  void initState() {
    /// Configure the parser with all of the app's allowed path templates.
    _routeParser = TemplateRouteParser(
      allowedPaths: [
        '/',
        '/about',
        '/apps',
        '/media',
        '/apps/nakbuch',
        '/apps/nakbuch/privacy-policy',
        '/apps/studiportal',
        '/apps/studiportal/privacy-policy',
        '/apps/sudoku',
        '/apps/sudoku/privacy-policy',
        '/media/accelerate',
        '/media/light-utopia',
        '/impressum',
        //'/author/:authorId',
      ],
      initialRoute: '/',
    );

    _routeState = RouteState(_routeParser);

    _routerDelegate = SimpleRouterDelegate(
      routeState: _routeState,
      navigatorKey: _navigatorKey,
      builder: (context) => HomeNavigator(
        navigatorKey: _navigatorKey,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) => RouteStateScope(
        notifier: _routeState,
        child: MaterialApp.router(
          routerDelegate: _routerDelegate,
          routeInformationParser: _routeParser,
          // Revert back to pre-Flutter-2.5 transition behavior:
          // https://github.com/flutter/flutter/issues/82053
          debugShowCheckedModeBanner: false,
          title: 'Leonard Lemke',
          themeMode: themeMode,
          theme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
                TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
              },
            ),
            colorSchemeSeed: colorSelected.color,
            useMaterial3: useMaterial3,
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
                TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
              },
            ),
            colorSchemeSeed: colorSelected.color,
            useMaterial3: useMaterial3,
            brightness: Brightness.dark,
          ),
        ),
      );

  @override
  void dispose() {
    _routeState.dispose();
    _routerDelegate.dispose();
    super.dispose();
  }
}
