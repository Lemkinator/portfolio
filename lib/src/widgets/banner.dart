import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SliverBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String? appIcon;
  final String? playStoreLink;

  const SliverBanner({
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    this.appIcon,
    this.playStoreLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
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
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.9),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  bottom: appIcon != null || playStoreLink != null ? 150 : 60,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ),
                Positioned(
                  left: 40,
                  bottom: playStoreLink != null ? 120 : 30,
                  child: Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ),
                if (appIcon != null)
                  Positioned(
                      left: 40,
                      bottom: 20,
                      child: Image.asset(
                        //get locale
                        appIcon!,
                        height: 80,
                      )),
                if (playStoreLink != null)
                  Positioned(
                    left: 150,
                    bottom: 15,
                    child: IconButton(
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
                  ),
              ],
            ),
          ),
        ),
      );
}
