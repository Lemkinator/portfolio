import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

import '../localization.dart';
import '../widgets.dart';

class AccelerateScreen extends StatelessWidget {
  const AccelerateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> impImages = [
      'images/media/accelerate/accelerate1.gif',
      'images/media/accelerate/accelerate2.gif',
      'images/media/accelerate/accelerate3.gif',
      'images/media/accelerate/accelerate4.gif',
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
      title: S.of(context).accelerate,
      subtitle: S.of(context).accelerateSubtitle,
      backgroundImage: 'images/media/accelerate/accelerate1.jpg',
      childs: <Widget>[
        h1(themeData, S.of(context).impressions),
        const SizedBox(height: 10),
        AspectRatio(
          aspectRatio: 16 / 9,
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
            : h1(themeData, S.of(context).trailer),
        (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
            ? Container()
            : Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: YoutubePlayer(
                      aspectRatio: 4 / 5,
                      controller: YoutubePlayerController.fromVideoId(
                        videoId: 'pf5zeYbQ8c8',
                        autoPlay: false,
                        params: const YoutubePlayerParams(showFullscreenButton: true),
                      ),
                    ),
                  ),
                ),
              ),
        (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
            ? Container()
            : const SizedBox(height: 40),
        (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
            ? Container()
            : h1(themeData, S.of(context).video),
        (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
            ? Container()
            : ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: YoutubePlayer(
                  aspectRatio: 16 / 9,
                  controller: YoutubePlayerController.fromVideoId(
                    videoId: 'h-fGDLRG0-0',
                    autoPlay: false,
                    params: const YoutubePlayerParams(showFullscreenButton: true),
                  ),
                ),
              ),
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
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            p(themeData, S.of(context).directedBy),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://noahmlin.com/'));
                },
                child: const Text('Noah Mlinaric')),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
