import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

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
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 20, 16.0, 0),
              child: Text(
                'Study Plus Mathem.-Tech. Softwaredeveloper',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: Text(
                  'Hallo, mein Name ist Leonard. Neben meiner Leidenschaft für Technik, Smartphones, Android und Computerspiele, programmiere ich gerne Apps für Android im OneUI-Stil oder bearbeite Videos, die ich mit meiner Racing-Drohne aufnehme.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
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
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0),
                child: Text(
                  'Ausbildung',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: Text(
                  'September 2019 - Juli 2021',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: Text(
                  'Mathem. tech. Softwaredeveloper',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: Text(
                  'Kaufmännischen und Hauswirtschaftlichen Schulen Donaueschingen / Continental AG',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0),
                child: Text(
                  'Studium: Bachelor of Science',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: Text(
                  'September 2019 - Februar 2024',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: Text(
                  'Study Plus Mathem. tech. Softwaredeveloper\nAllgemeine Informatik (Vertiefungsrichtung Software Engineering)',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: Text(
                  'Furtwangen University (HFU) / Continental AG',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 100),
            ]),
          ),
        ],
      ),
    );
  }

  Widget widgetBuilder(BuildContext context, int index) {
    return images[index % images.length];
  }
}

typedef OnCurrentItemChangedCallback = void Function(int currentItem);

class Carousel extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;

  const Carousel({super.key, required this.itemBuilder});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late final PageController _controller;
  late int _currentPage;
  bool _pageHasChanged = false;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _controller = PageController(
      viewportFraction: .8,
      initialPage: _currentPage,
    );
  }

  @override
  Widget build(context) {
    var size = MediaQuery.of(context).size;
    size = Size(size.width.clamp(0, 400), size.height.clamp(0, 400));
    return PageView.builder(
      onPageChanged: (value) {
        setState(() {
          _pageHasChanged = true;
          _currentPage = value;
        });
      },
      controller: _controller,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      itemBuilder: (context, index) => AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          var result = _pageHasChanged ? _controller.page! : _currentPage * 1.0;

          // The horizontal position of the page between a 1 and 0
          var value = result - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);

          return Center(
            child: SizedBox(
              height: Curves.easeOut.transform(value) * size.height,
              width: Curves.easeOut.transform(value) * size.width,
              child: child,
            ),
          );
        },
        child: widget.itemBuilder(context, index),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
