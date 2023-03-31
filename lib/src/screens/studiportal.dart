import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:portfolio/src/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

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
      'images/apps/studiportal/mobile2.png',
      'images/apps/studiportal/mobile3.png',
      'images/apps/studiportal/mobile4.png',
      'images/apps/studiportal/mobile5.png',
      'images/apps/studiportal/mobile6.png',
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
        playStoreLink: '',
        childs: <Widget>[
          p(themeData, S.of(context).nakBuchDisclaimer),
          const SizedBox(height: 5),
          li(themeData, S.of(context).nakBuchDisclaimer1),
          li(themeData, S.of(context).nakBuchDisclaimer2),
          li(themeData, S.of(context).nakBuchDisclaimer3),
          li(themeData, S.of(context).nakBuchDisclaimer4),
          const SizedBox(height: 10),
          p(themeData, S.of(context).nakBuchDisclaimer5),
          const SizedBox(height: 5),
          p(themeData, S.of(context).nakBuchDisclaimer6),
          const SizedBox(height: 40),
          h1(themeData, S.of(context).features),
          const SizedBox(height: 10),
          li(themeData, S.of(context).free),
          li(themeData, S.of(context).darkModeAutomaticallyAdaptsToTheSystemSettings),
          li(themeData, S.of(context).nakBuchQuickSettingForMutedoNotDisturbMode),
          li(themeData, S.of(context).nakBuchPleasantTextView),
          li(themeData, S.of(context).favorites),
          li(themeData, S.of(context).notes),
          li(themeData, S.of(context).dateFunctionSungOn),
          li(themeData, S.of(context).history),
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
                  launchUrl(Uri.parse(S.of(context).nakBuchAmazonAppStoreLink));
                },
                child: Text(S.of(context).nakBuchAmazonAppStore)),
          ),
          const SizedBox(height: 40),
          h1(themeData, S.of(context).oneui),
          const SizedBox(height: 10),
          p(themeData, S.of(context).nakBuchOneUi),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/nakbuch/expanding_app_bar.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          h1(themeData, S.of(context).otherFeatures),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).nakBuchSwipeSongs),
          const SizedBox(height: 10),
          p(themeData, S.of(context).nakBuchSwipeSongsText),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/nakbuch/swipe_gesture.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).nakBuchDataTab),
          const SizedBox(height: 10),
          p(themeData, S.of(context).nakBuchDataTabText),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/nakbuch/data_tab.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).nakBuchShortcuts),
          const SizedBox(height: 10),
          p(themeData, S.of(context).nakBuchShortcutsText),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/nakbuch/shortcut.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          h2(themeData, S.of(context).nakBuchQuickActions),
          const SizedBox(height: 10),
          p(themeData, S.of(context).nakBuchQuickActions),
          const SizedBox(height: 10),
          p(themeData, S.of(context).nakBuchQuickActionsText),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/apps/nakbuch/quick_actions.png',
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
                  RouteStateScope.of(context).go('/apps/nakbuch/privacy-policy');
                },
                child: Text(S.of(context).privacyPolicy),
              ),
              const SizedBox(width: 10),
              FilledButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/Lemkinator/NAK-Buch'));
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
    return Scaffold(
      appBar: AppBar(
        title: Text('${S.of(context).studiportal} ${S.of(context).privacyPolicy}'),
      ),
      body: Center(
        child: Text(
          '${S.of(context).studiportal} ${S.of(context).privacyPolicy}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
