import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets.dart';
import '../localization.dart';
import '../routing.dart';

class StudiportalScreen extends StatelessWidget {
  const StudiportalScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> mobileImages = [
      'images/apps/studiportal/mobile1.png',
      'images/apps/studiportal/mobile3.png',
      'images/apps/studiportal/mobile4.png',
      'images/apps/studiportal/mobile5.png',
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
        title: S.of(context).studiportal,
        subtitle: S.of(context).studiportalDescription,
        backgroundImage: 'images/apps/studiportal/Vorstellungsgrafik.png',
        appIcon: 'images/apps/studiportal/Studiportal_squircle.png',
        playStoreLink: 'https://play.google.com/store/apps/details?id=de.lemke.studiportal&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1',
        childs: <Widget>[
          p(themeData, S.of(context).studiportalDisclaimer),
          const SizedBox(height: 40),
          h1(themeData, S.of(context).features),
          const SizedBox(height: 10),
          li(themeData, S.of(context).free),
          li(themeData, S.of(context).darkModeAutomaticallyAdaptsToTheSystemSettings),
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
                  launchUrl(Uri.parse(S.of(context).studiportalAmazonAppStoreLink));
                },
                child: Text(S.of(context).studiportalAmazonAppStore)),
          ),
          const SizedBox(height: 40),
          h1(themeData, S.of(context).oneUi),
          const SizedBox(height: 10),
          p(themeData, S.of(context).studiportalOneUi),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/studiportal/expanding_app_bar.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          h1(themeData, S.of(context).otherFeatures),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).notifications),
          const SizedBox(height: 10),
          p(themeData, S.of(context).studiportalNotifications),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/studiportal/mobile2.png',
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
                  RouteStateScope.of(context).go('/apps/studiportal/privacy-policy');
                },
                child: Text(S.of(context).privacyPolicy),
              ),
              const SizedBox(width: 10),
              FilledButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/Lemkinator/Studiportal'));
                },
                child: Text(S.of(context).sourceCode),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ]);
  }
}

class StudiportalPrivacyPolicyScreen extends StatelessWidget {
  const StudiportalPrivacyPolicyScreen({
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
        p(themeData, S.of(context).studiportal),
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
                    path: S.of(context).studiportalEmail,
                    //queryParameters: {'subject': 'Example'}
                  ));
                },
                child: Text(S.of(context).studiportalEmail)),
          ],
        ),
        const SizedBox(height: 40),
        h2(themeData, S.of(context).privacyInformation),
        const SizedBox(height: 10),
        p(themeData, S.of(context).PrivacyInformationNoDataCollected),
        const SizedBox(height: 40),
        h2(themeData, S.of(context).statusOfTheDataProtectionInformation),
        const SizedBox(height: 10),
        p(themeData, S.of(context).studiportalStatusPrivacyInformation),
        const SizedBox(height: 40),
      ],
    );
  }
}
