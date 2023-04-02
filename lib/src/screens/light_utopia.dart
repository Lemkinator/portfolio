import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

import '../localization.dart';
import '../widgets.dart';

class LightUtopiaScreen extends StatelessWidget {
  const LightUtopiaScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> impImages = [
      'images/media/light-utopia/light_utopia1.gif',
      'images/media/light-utopia/light_utopia2.gif',
      'images/media/light-utopia/light_utopia3.gif',
      'images/media/light-utopia/light_utopia4.gif',
    ]
        .map((file) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset(file, fit: BoxFit.cover),
              ),
            ))
        .toList();
    final themeData = Theme.of(context);
    return ScreenLayout(
      title: S.of(context).lightUtopia,
      subtitle: S.of(context).lightUtopiaSubtitle,
      backgroundImage: 'images/media/light-utopia/light-utopia.jpg',
      childs: <Widget>[
        h1(themeData, S.of(context).impressions),
        const SizedBox(height: 10),
        AspectRatio(
          aspectRatio: 2 / 1,
          child: CarouselSlider.builder(
              unlimitedMode: true,
              enableAutoSlider: true,
              autoSliderDelay: const Duration(seconds: 7),
              slideBuilder: (index) => impImages[index],
              slideTransform: const TabletTransform(),
              slideIndicator: CircularSlideIndicator(),
              itemCount: impImages.length),
        ),
        const SizedBox(height: 40),
        (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
            ? Container()
            : h1(themeData, S.of(context).video),
        (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
            ? Container()
            : ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: YoutubePlayer(
                  aspectRatio: 2 / 1,
                  controller: YoutubePlayerController.fromVideoId(
                    videoId: 'swZD_CeiczE',
                    autoPlay: false,
                    params: const YoutubePlayerParams(showFullscreenButton: true),
                  ),
                ),
              ),
        (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
            ? Container()
            : const SizedBox(height: 40),
        h1(themeData, S.of(context).inMemoriam),
        const SizedBox(height: 10),
        p(themeData, S.of(context).lightUtopiaInMemoriamText1),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              child: Image.asset(
                'images/media/light-utopia/in_memoriam_rs3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        p(themeData, S.of(context).lightUtopiaInMemoriamText2),
        const SizedBox(height: 40),
        h1(themeData, S.of(context).credits),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            p(themeData, S.of(context).driver),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://www.instagram.com/herrschermuffin/'));
                },
                child: const Text('Henrik Lemke')),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
