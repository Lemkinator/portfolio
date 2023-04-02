import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SliverBanner extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String backgroundImage;
  final String? appIcon;
  final String? playStoreLink;

  const SliverBanner({
    required this.title,
    this.subtitle,
    required this.backgroundImage,
    this.appIcon,
    this.playStoreLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: SizedBox(
            height: 300,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    backgroundImage,
                    fit: BoxFit.cover,
                  ),
                ),
                //gradient opacity
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                ),
                //Center Text
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          if (subtitle != null) Text(
                            subtitle!,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          if (appIcon != null || playStoreLink != null) const SizedBox(height: 20),
                          if (appIcon != null || playStoreLink != null)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (appIcon != null)
                                  Image.asset(
                                    //get locale
                                    appIcon!,
                                    height: 80,
                                  ),
                                if (playStoreLink != null) const SizedBox(width: 20),
                                if (playStoreLink != null)
                                  IconButton(
                                      onPressed: () {
                                        launchUrl(
                                          //convert string with link to uri
                                          Uri.parse(playStoreLink!),
                                        );
                                      },
                                      icon: Image.asset(
                                        //get locale
                                        Localizations.localeOf(context).languageCode == 'de'
                                            ? 'images/apps/google-play-badge-de.png'
                                            : 'images/apps/google-play-badge-en.png',
                                        width: 200,
                                      )),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
