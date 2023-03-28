import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

import '../localization.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});

  static const List<String> fileNames = [
    'images/about/me1.jpg',
    'images/about/me2.jpg',
    'images/about/me3.jpg',
  ];

  final List<Widget> images = fileNames
      .map((file) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.asset(file, fit: BoxFit.cover),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final titleLarge = textTheme.titleLarge?.copyWith(
      color: Theme.of(context).colorScheme.secondary,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 5, 16),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Text(
                  S.of(context).myJob,
                  style: titleLarge,
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
                    constraints: const BoxConstraints(maxWidth: 512),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CarouselSlider.builder(
                          unlimitedMode: true,
                          slideBuilder: (index) => images[index],
                          slideTransform: const CubeTransform(),
                          slideIndicator: CircularSlideIndicator(
                            padding: const EdgeInsets.only(bottom: 16),
                          ),
                          itemCount: images.length),
                    ),
                  ),
                ),
                /*Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return images[index];
                      },
                      itemCount: 3,
                      itemWidth: 512.0,
                      itemHeight: 512.0,
                      layout: SwiperLayout.TINDER,
                      pagination: const SwiperPagination(),
                      control: const SwiperControl(),
                    ),
                  ),*/
                const SizedBox(height: 20),
                Text(
                  S.of(context).mySlogan,
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 40),
                Text(
                  S.of(context).apprenticeship,
                  style: titleLarge,
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
                  style: titleLarge,
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
          ],
        ),
      ),
    );
  }
}
