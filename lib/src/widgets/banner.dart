import 'package:flutter/material.dart';

class SliverBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String backgroundImage;

  const SliverBanner({
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 300,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
            //gradient opacity
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40,
              bottom: 60,
              child: Text(
                title,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            Positioned(
              left: 40,
              bottom: 30,
              child: Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
