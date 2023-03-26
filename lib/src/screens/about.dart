import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});

  static const List<String> fileNames = [
    'images/about/me1.jpg',
    'images/about/me2.jpg',
    'images/about/me3.jpg',
  ];

  final List<Widget> images = fileNames
      .map((file) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Image.asset(file, fit: BoxFit.cover),
          ))
      .toList();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 20, 16.0, 0),
                  child: Text(
                    'Study Plus Mathem.-Tech. Softwaredeveloper',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Text(
                    'Hallo, mein Name ist Leonard. Neben meiner Leidenschaft für Technik, Smartphones, Android und Computerspiele, programmiere ich gerne Apps für Android im OneUI-Stil oder bearbeite Videos, die ich mit meiner Racing-Drohne aufnehme.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 512,
                  child: Swiper(
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
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0),
                  child: Text(
                    'Ausbildung',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Text(
                    'September 2019 - Juli 2021',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Text(
                    'Mathem. tech. Softwaredeveloper',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Text(
                    'Kaufmännischen und Hauswirtschaftlichen Schulen Donaueschingen / Continental AG',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0),
                  child: Text(
                    'Studium: Bachelor of Science',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Text(
                    'September 2019 - Februar 2024',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Text(
                    'Study Plus Mathem. tech. Softwaredeveloper\nAllgemeine Informatik (Vertiefungsrichtung Software Engineering)',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Text(
                    'Furtwangen University (HFU) / Continental AG',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 100),
              ]),
            ),
          ],
        ),
      );
}
