import 'dart:math';
import 'package:flutter/material.dart';

import '../widgets.dart';

class ScreenLayout extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? backgroundImage;
  final String? appIcon;
  final String? playStoreLink;

  final double maxWidth;
  final List<Widget> childs;

  const ScreenLayout({
    Key? key,
    required this.title,
    this.subtitle,
    this.backgroundImage,
    this.appIcon,
    this.playStoreLink,
    this.maxWidth = 1000,
    required this.childs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var padding = (size.width - maxWidth) / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: CustomScrollView(
        slivers: [
          if (backgroundImage != null) SliverBanner(
            title: title,
            subtitle: subtitle,
            backgroundImage: backgroundImage!,
            appIcon: appIcon,
            playStoreLink: playStoreLink,
          ) else SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: max(padding, 16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  if (subtitle != null) Text(
                    subtitle!,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: max(padding, 16), vertical: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(childs),
            ),
          ),
        ],
      ),
    );
  }
}
