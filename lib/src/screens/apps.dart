import 'package:flutter/material.dart';

class AppsMoreInfo extends StatelessWidget {
  const AppsMoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final headlineLarge = textTheme.headlineLarge?.copyWith(
      color: Theme.of(context).colorScheme.secondary,
    );
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(<Widget>[
          Text(
            '',
            style: headlineLarge,
          ),
          const SizedBox(height: 5),
          Text(
            '',
            style: textTheme.bodyLarge,
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
