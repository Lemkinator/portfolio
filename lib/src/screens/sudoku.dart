import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:portfolio/src/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../localization.dart';
import '../routing.dart';

class SudokuScreen extends StatelessWidget {
  const SudokuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> mobileImages = [
      'images/apps/sudoku/mobile1.png',
      'images/apps/sudoku/mobile2.png',
      'images/apps/sudoku/mobile3.png',
      'images/apps/sudoku/mobile4.png',
      'images/apps/sudoku/mobile5.png',
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
        title: S.of(context).sudoku,
        subtitle: S.of(context).sudokuDescription,
        backgroundImage: 'images/apps/sudoku/Vorstellungsgrafik.png',
        appIcon: 'images/apps/sudoku/Sudoku_squircle.png',
        playStoreLink:
            'https://play.google.com/store/apps/details?id=de.lemke.sudoku&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1',
        childs: <Widget>[
          (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) //YT Player not supported on desktop devices
              ? Container()
              : ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: YoutubePlayer(
                    controller: YoutubePlayerController.fromVideoId(
                      videoId: 'zxecO9Muo4Q',
                      autoPlay: false,
                      params: const YoutubePlayerParams(showFullscreenButton: true),
                    ),
                  ),
                ),
          const SizedBox(height: 10),
          p(themeData, S.of(context).sudokuText1),
          const SizedBox(height: 10),
          p(themeData, S.of(context).sudokuText2),
          const SizedBox(height: 10),
          p(themeData, S.of(context).sudokuText3),
          const SizedBox(height: 10),
          h1(themeData, S.of(context).features),
          const SizedBox(height: 10),
          li(themeData, S.of(context).free),
          li(themeData, S.of(context).darkModeAutomaticallyAdaptsToTheSystemSettings),
          li(themeData, S.of(context).history),
          li(themeData, S.of(context).statistics),
          const SizedBox(height: 40),
          h1(themeData, S.of(context).screenshots),
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
          h1(themeData, S.of(context).windows11Support),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              p(themeData, S.of(context).windows11Support1),
              TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(S.of(context).windows11Support2));
                  },
                  child: Text(S.of(context).windows11Support3)),
              p(themeData, S.of(context).windows11Support4),
            ],
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(S.of(context).windows11Support5));
                },
                child: Text(S.of(context).windows11Support6)),
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(S.of(context).sudokuAmazonAppStoreLink));
                },
                child: Text(S.of(context).sudokuAmazonAppStore)),
          ),
          const SizedBox(height: 40),
          h1(themeData, S.of(context).oneUi),
          const SizedBox(height: 10),
          p(themeData, S.of(context).sudokuOneUi),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/sudoku/expanding_app_bar.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          h1(themeData, S.of(context).otherFeatures),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).googlePlayGames),
          const SizedBox(height: 10),
          p(themeData, S.of(context).googlePlayGamesText),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/sudoku/play_games.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).sudokuLevel),
          const SizedBox(height: 10),
          p(themeData, S.of(context).sudokuLevelText),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/sudoku/level.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).dailySudoku),
          const SizedBox(height: 10),
          p(themeData, S.of(context).dailySudokuText),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/sudoku/daily.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          h1(themeData, S.of(context).links),
          const SizedBox(height: 10),
          Row(
            children: [
              FilledButton(
                onPressed: () {
                  RouteStateScope.of(context).go('/apps/sudoku/privacy-policy');
                },
                child: Text(S.of(context).privacyPolicy),
              ),
              const SizedBox(width: 10),
              FilledButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/Lemkinator/Sudoku'));
                },
                child: Text(S.of(context).sourceCode),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ]);
  }
}

class SudokuPrivacyPolicyScreen extends StatelessWidget {
  const SudokuPrivacyPolicyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ScreenLayout(
      title: S.of(context).privacyPolicy,
      childs: [
        h2(themeData, S.of(context).app),
        const SizedBox(height: 10),
        p(themeData, S.of(context).sudoku),
        const SizedBox(height: 40),
        h2(themeData, S.of(context).provider),
        const SizedBox(height: 10),
        p(themeData, S.of(context).leo),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            p(themeData, S.of(context).email),
            TextButton(
                onPressed: () {
                  launchUrl(Uri(
                    scheme: 'mailto',
                    path: S.of(context).sudokuEmail,
                    //queryParameters: {'subject': 'Example'}
                  ));
                },
                child: Text(S.of(context).sudokuEmail)),
          ],
        ),
        const SizedBox(height: 40),
        h2(themeData, S.of(context).privacyInformation),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            p(themeData, S.of(context).sudokuPrivacyPolicy1),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(S.of(context).googlePlayGamesLink,));
                },
                child: Text(S.of(context).googlePlayGames)),
            p(themeData, S.of(context).sudokuPrivacyPolicy2),
            p(themeData, S.of(context).sudokuPrivacyPolicy3),
            p(themeData, S.of(context).sudokuPrivacyPolicy4),
          ],
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
              onPressed: () {
                launchUrl(Uri.parse(S.of(context).playGamesProfilePrivacyOtherSettingsLink));
              },
              child: Text(S.of(context).playGamesProfilePrivacyOtherSettings)),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
              onPressed: () {
                launchUrl(Uri.parse(S.of(context).deleteYourPlayGamesProfileAndDataLink));
              },
              child: Text(S.of(context).deleteYourPlayGamesProfileAndData)),
        ),
        const SizedBox(height: 30),
        h3(themeData, S.of(context).dataEncryption),
        const SizedBox(height: 10),
        p(themeData, S.of(context).sudokuDataEncryption),
        const SizedBox(height: 30),
        h3(themeData, S.of(context).dataCollected),
        const SizedBox(height: 10),
        p(themeData, S.of(context).sudokuDataCollected),
        const SizedBox(height: 30),
        h3(themeData, S.of(context).dataDeletion),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            p(themeData, S.of(context).sudokuDataDeletion1),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(S.of(context).googlePlayGamesProfileLink,));
                },
                child: Text(S.of(context).googlePlayGamesProfile)),
            p(themeData, S.of(context).sudokuDataDeletion2),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(S.of(context).googleMyaccountLink,));
                },
                child: Text(S.of(context).googleMyaccount)),
            p(themeData, S.of(context).sudokuDataDeletion3),
          ],
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            p(themeData, S.of(context).sudokuDataDeletion4),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(S.of(context).googlePlayGamesProfileLink,));
                },
                child: Text(S.of(context).googlePlayGamesProfile)),
            p(themeData, S.of(context).sudokuDataDeletion5),
          ],
        ),
        const SizedBox(height: 40),
        h2(themeData, S.of(context).statusOfTheDataProtectionInformation),
        const SizedBox(height: 10),
        p(themeData, S.of(context).sudokuStatusPrivacyInformation),
        const SizedBox(height: 40),
      ],
    );
  }
}
