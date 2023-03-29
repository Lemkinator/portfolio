import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

import '../localization.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});

  final List<Widget> images = [
    'images/about/me1.jpg',
    'images/about/me2.jpg',
    'images/about/me3.jpg',
  ]
      .map((file) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.asset(file, fit: BoxFit.cover),
            ),
      ))
      .toList();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final headlineLarge = textTheme.headlineLarge?.copyWith(
      color: Theme.of(context).colorScheme.secondary,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Text(
                  S.of(context).myJob,
                  style: headlineLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  S.of(context).myDescription,
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CarouselSlider.builder(
                          unlimitedMode: true,
                          enableAutoSlider: true,
                          autoSliderDelay: const Duration(seconds: 7),
                          slideBuilder: (index) => images[index],
                          slideTransform: const ParallaxTransform(),
                          slideIndicator: CircularSlideIndicator(),
                          itemCount: images.length),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  S.of(context).mySlogan,
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 40),
                Text(
                  S.of(context).apprenticeship,
                  style: headlineLarge,
                ),
                Text(
                  S.of(context).apprenticeshipDate,
                  style: textTheme.bodySmall,
                ),
                const SizedBox(height: 10),
                Text(
                  S.of(context).apprenticeshipJob,
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  S.of(context).apprenticeshipLocations,
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 40),
                Text(
                  S.of(context).study,
                  style: headlineLarge,
                ),
                Text(
                  S.of(context).studyDate,
                  style: textTheme.bodySmall,
                ),
                const SizedBox(height: 10),
                Text(
                  '${S.of(context).myJob}\n${S.of(context).studySpecialization}',
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  S.of(context).studyLocations,
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 40),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
