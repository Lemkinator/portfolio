import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import '../localization.dart';

class MediaMoreInfo extends StatelessWidget {
  const MediaMoreInfo({super.key});

  static const imageFiles = [
    'images/media/drone1.jpg',
    'images/media/drone2.jpg',
    'images/media/drone3.jpg',
    'images/media/drone4.jpg',
    'images/media/drone5.jpg',
    'images/media/drone6.jpg',
    'images/media/drone7.jpg',
    'images/media/drone8.jpg',
    'images/media/drone9.jpg',
  ];

  static List<String> subtitles = [
    S.current.journey1,
    S.current.journey2,
    S.current.journey3,
    S.current.journey4,
    S.current.journey5,
    S.current.journey6,
    S.current.journey7,
    S.current.journey8,
    S.current.journey9,
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final headlineLarge = textTheme.headlineLarge?.copyWith(
      color: Theme.of(context).colorScheme.secondary,
    );
    final headlineMedium = textTheme.headlineMedium?.copyWith(
      color: Theme.of(context).colorScheme.primary,
    );
    final headlineSmall = textTheme.headlineSmall?.copyWith(
      color: Theme.of(context).colorScheme.secondary,
    );
    final List<Widget> images = [
      for (var i = 0; i < imageFiles.length; i++)
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Image.asset(imageFiles[i], fit: BoxFit.cover),
                ),
              ),
              Text(
                subtitles[i],
                style: textTheme.bodyLarge,
              ),
              const SizedBox(height: 5)
            ],
          ),
        ),
    ];

    Widget h1(String text) => Text(
          text,
          style: headlineLarge,
        );
    Widget h2(String text) => Text(
          text,
          style: headlineMedium,
        );
    Widget h3(String text) => Text(
          text,
          style: headlineSmall,
        );
    Widget p(String text) => Text(
          text,
          style: textTheme.bodyLarge,
        );
    Widget li(String text) => Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(
            '•  $text',
            style: textTheme.bodyLarge,
          ),
        );

    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(<Widget>[
          h1(S.of(context).whatIsFpv),
          const SizedBox(height: 5),
          li(S.of(context).whatIsFpv1),
          const SizedBox(height: 2),
          li(S.of(context).whatIsFpv2),
          const SizedBox(height: 2),
          li(S.of(context).whatIsFpv3),
          const SizedBox(height: 40),
          h1(S.of(context).whatIsSpecialAboutFpv),
          const SizedBox(height: 5),
          p(S.of(context).whatIsSpecialAboutFpv1),
          const SizedBox(height: 2),
          p(S.of(context).whatIsSpecialAboutFpv2),
          const SizedBox(height: 2),
          li(S.of(context).whatIsSpecialAboutFpv3),
          li(S.of(context).whatIsSpecialAboutFpv4),
          li(S.of(context).whatIsSpecialAboutFpv5),
          const SizedBox(height: 10),
          p(S.of(context).whatIsSpecialAboutFpv6),
          const SizedBox(height: 5),
          p(S.of(context).whatIsSpecialAboutFpv7),
          const SizedBox(height: 40),
          h1(S.of(context).whatGotMeIntoFpv),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: ExpandableCarousel(
                options: CarouselOptions(
                  viewportFraction: 0.8,
                ),
                items: images,
              ),
            ),
          ),
          const SizedBox(height: 40),
          h1(S.of(context).setup),
          const SizedBox(height: 10),
          h2('2023'),
          const SizedBox(height: 10),
          h3('iFlight Nazgul Evoque F5 V2 HD'),
          const SizedBox(height: 5),
          li('Frame: Nazgul F5 DeadCat'),
          li('Motor: XING2 2207 1855KV'),
          li('Props: Nazgul F5'),
          li('ESC: XING2 30A'),
          li('ESC: BLITZ Mini E55 4-IN-1 2-6S 55A'),
          li('Video Transmission: DJI O3 Air Unit'),
          li('Receiver: TBS Crossfire Nano'),
          li('LiPo: Tattu R-LINE V4.0 1300mAh 130C 6S'),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset('images/media/evoque_v2.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 40),
          h2('2021 - 2023'),
          const SizedBox(height: 10),
          h3('Drone (Custom Build, 5 Inch)'),
          const SizedBox(height: 5),
          li('Frame: iFlight Cidora SL5'),
          li('Motor: iFlight XING-E 2306 1700KV'),
          li('Props: HQProp DP5X4.3X3V1S'),
          li('Stack: Mamba F722S 60A'),
          li('Video Transmission: Caddx Vista Kit / Air Unit Lite'),
          li('Receiver: TBS Crossfire Nano'),
          li('LiPo: Tattu R-LINE V3.0 1300mAh 120C 6S'),
          li('GoPro Hero 6 Black'),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset('images/media/drone8.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 10),
          h3('Cinewhoop (iFlight ProTek25)'),
          const SizedBox(height: 5),
          li('Motor: iFlight XING 1404 4600KV'),
          li('Props: Nazgul 2525'),
          li('Stack: SucceX-D 20A Whoop AIO'),
          li('Video Transmission: Caddx Vista Kit / Air Unit Lite'),
          li('Receiver: TBS Crossfire Nano'),
          li('LiPo: Tattu R-LINE V1.0 850mAh 95C 4S'),
          li('Naked GoPro Hero 6 Black'),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset('images/media/protek_25.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 10),
          h3('Other'),
          const SizedBox(height: 5),
          li('Radio: FrSky Taranis X-Lite S'),
          li('Goggles: DJI FPV Goggles V2'),
          li('Charger: HOTA D6 PRO DUAL Smart Charger AC/DC'),
          const SizedBox(height: 40),
          h2('2020 - 2021'),
          const SizedBox(height: 10),
          h3('Drone (Custom Build, 5 Inch)'),
          const SizedBox(height: 5),
          li('Frame: iFlight Cidora SL5'),
          li('Motor: iFlight XING-E 2306 1700KV'),
          li('Props: HQProp DP5X4.3X3V1S'),
          li('Stack: Mamba F722S 60A'),
          li('Cam: Foxeer Falkor 2 Mini'),
          li('VTX: Rush Tank Ultimate'),
          li('Receiver: TBS Crossfire Nano'),
          li('LiPo: Goldbat 1300mAh 100C 6S'),
          li('GoPro Hero 6 Black'),
          const SizedBox(height: 10),
          h3('Other'),
          const SizedBox(height: 5),
          li('Radio: FrSky Taranis X-Lite S'),
          li('Goggles: Eachine EV800D'),
          li('Charger: ISDT 600AC'),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
