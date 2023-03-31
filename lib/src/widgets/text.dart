import 'package:flutter/material.dart';

Widget h1(ThemeData themeData, String text) => Text(
  text,
  style: themeData.textTheme.headlineLarge?.copyWith(
    color: themeData.colorScheme.secondary,
  ),
);
Widget h2(ThemeData themeData, String text) => Text(
  text,
  style: themeData.textTheme.headlineMedium?.copyWith(
    color: themeData.colorScheme.primary,
  ),
);
Widget h3(ThemeData themeData, String text) => Text(
  text,
  style: themeData.textTheme.headlineSmall?.copyWith(
    color: themeData.colorScheme.secondary,
  ),
);
Widget p(ThemeData themeData, String text) => Text(
  text,
  style: themeData.textTheme.bodyLarge,
);
Widget li(ThemeData themeData, String text) => Padding(
  padding: const EdgeInsets.only(bottom: 2),
  child: Text(
    '•  $text',
    style: themeData.textTheme.bodyLarge,
  ),
);
