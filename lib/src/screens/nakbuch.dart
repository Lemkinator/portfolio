import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:portfolio/src/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../localization.dart';

class NAKBuchScreen extends StatelessWidget {
  const NAKBuchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> mobileImages = [
      'images/apps/nakbuch/mobile1.png',
      'images/apps/nakbuch/mobile2.png',
      'images/apps/nakbuch/mobile3.png',
      'images/apps/nakbuch/mobile4.png',
      'images/apps/nakbuch/mobile5.png',
      'images/apps/nakbuch/mobile6.png',
    ]
        .map((file) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset(file, fit: BoxFit.cover),
              ),
            ))
        .toList();
    final List<Widget> wearImages = [
      'images/apps/nakbuch/wear1.png',
      'images/apps/nakbuch/wear2.png',
      'images/apps/nakbuch/wear3.png',
      'images/apps/nakbuch/wear4.png',
    ]
        .map((file) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset(file, fit: BoxFit.cover),
              ),
            ))
        .toList();

    final textTheme = Theme.of(context).textTheme;
    final headlineLarge = textTheme.headlineLarge?.copyWith(
      color: Theme.of(context).colorScheme.secondary,
    );
    Widget h1(String text) => Text(
          text,
          style: headlineLarge,
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

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).nakBuch),
      ),
      body: CustomScrollView(
        slivers: [
          SliverBanner(
            title: S.of(context).nakBuch,
            subtitle: S.of(context).nakBuchDescription,
            backgroundImage: 'images/apps/nakbuch/Vorstellungsgrafik.png',
            appIcon: 'images/apps/nakbuch/NAK_Buch_squircle.png',
            playStoreLink:
                'https://play.google.com/store/apps/details?id=de.lemke.nakbuch&gl=DE&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1',
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                p('This app is in no way affiliated with the New Apostolic Church or Verlag Friedrich Bischoff GmbH and contains only the copyright-free texts from the following books:'),
                const SizedBox(height: 5),
                li('Gesangbuch (320 of 438 songs)'),
                li('Chorbuch (206 of 462 songs)'),
                li('Jugendliederbuch (41 of 102 songs)'),
                li('Ergänzungsheft zum Jugendliederbuch (3 of 20 songs)'),
                const SizedBox(height: 10),
                p('For the remaining songs, the rights are still held by the authors, which is why they cannot be displayed or can only be displayed in part. The information on copyright has been checked with great care. If I have unwittingly made mistakes, please let me know and I will follow up immediately.'),
                const SizedBox(height: 5),
                p('The administration of the rights is, among others, the responsibility of Verlag Friedrich Bischoff GmbH, which has itself published a (paid) app for the Gesangbuch and a (paid) app for the Chorbuch.'),
                const SizedBox(height: 40),
                h1('Features'),
                const SizedBox(height: 10),
                li('Free'),
                li('Dark Mode (automatically adapts to the system settings)'),
                li('Quick setting for mute/do not disturb mode'),
                li('Pleasant text view'),
                li('Favorites'),
                li('Notes'),
                li('Date function (sung on...)'),
                li('History'),
                const SizedBox(height: 40),
                h1('Screenshots'),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: AspectRatio(
                      aspectRatio: 108 / 224,
                      child: CarouselSlider.builder(
                          unlimitedMode: true,
                          enableAutoSlider: true,
                          autoSliderDelay: const Duration(seconds: 7),
                          slideBuilder: (index) => mobileImages[index],
                          slideTransform: const TabletTransform(),
                          slideIndicator: CircularSlideIndicator(),
                          itemCount: mobileImages.length),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                h1('Wear OS support'),
                const SizedBox(height: 10),
                p('Forgotten your smartphone? No problem, the text contents of the app can be displayed on the smartwatch without any problems (in a pleasant design).'),
                const SizedBox(height: 10),
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
                          slideBuilder: (index) => wearImages[index],
                          slideTransform: const TabletTransform(),
                          slideIndicator: CircularSlideIndicator(),
                          itemCount: wearImages.length),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                h1('Windows 11 support'),
                const SizedBox(height: 10),
                Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    p('To use mobile apps on a Windows 11 PC, the '),
                    TextButton(
                        onPressed: () {
                          launchUrl(Uri.parse('ms-windows-store://pdp/?productid=9NJHK44TTKSX'));
                        },
                        child: const Text('Amazon Appstore')),
                    p(' must be installed. '),
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        launchUrl(Uri.parse('https://support.microsoft.com/en-us/topic/f8d0abb5-44ad-47d8-b9fb-ad6b1459ff6c'));
                      },
                      child: const Text('Install Amazon Appstore on Windows 11')),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        launchUrl(Uri.parse('https://www.amazon.com/gp/product/B0BJ13C4RH'));
                      },
                      child: const Text('NAK Buch in Amazon Appstore')),
                ),
                const SizedBox(height: 40),
                h1('One UI'),
                const SizedBox(height: 10),
                p('NAK Buch was developed according to Samsung\'s One UI guidelines. For example, the title bar can be "dragged down" on large devices on any screen to ensure comfortable (one-handed) operation of the top buttons.'),
                const SizedBox(height: 10),

                const SizedBox(height: 40),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class NAKBuchPrivacyPolicyScreen extends StatelessWidget {
  const NAKBuchPrivacyPolicyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NAK Buch Privacy Policy'),
      ),
      body: Center(
        child: Text(
          'NAK Buch Privacy Policy',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
