import 'package:flutter/material.dart';

import '../widgets.dart';

class ScreenLayout extends StatelessWidget {
  final String title;
  final bool showAppBar;
  final String? subtitle;
  final String? backgroundImage;
  final String? appIcon;
  final String? playStoreLink;

  final double maxWidth;
  final List<Widget> childs;

  const ScreenLayout({
    Key? key,
    required this.title,
    this.showAppBar = true,
    this.subtitle,
    this.backgroundImage,
    this.appIcon,
    this.playStoreLink,
    this.maxWidth = 1000,
    required this.childs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: Text(title),
            )
          : null,
      body: CustomScrollView(
        slivers: [
          if (backgroundImage != null)
            SliverBanner(
              title: title,
              subtitle: subtitle,
              backgroundImage: backgroundImage!,
              appIcon: appIcon,
              playStoreLink: playStoreLink,
            ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: childs,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
