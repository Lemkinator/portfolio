import 'package:flutter/material.dart';

import 'constants.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key, this.screenSelected});

  final ScreenSelected? screenSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 20, 16.0, 0),
              child: Text(
                //if (screenSelected == ScreenSelected.apps) 'Apps'
                //if (screenSelected == ScreenSelected.media) 'Media'
                // else 'Projects',
                screenSelected == ScreenSelected.apps
                    ? 'Apps'
                    : screenSelected == ScreenSelected.media
                        ? 'Media'
                        : 'Projects',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          ProjectsGrid(screenSelected: screenSelected)
        ],
      ),
    );
  }
}

List<ProjectCard> projectCards(ScreenSelected? screenSelected) {
  var projects = [
    ProjectCard(
      categoryIndex: 2,
      title: 'Sudoku',
      description: 'Eine Sudoku App im schönen OneUI-Design.',
      image: 'images/apps/sudoku/app_icon.png',
      tags: const ['Apps', 'OneUI', 'Spiel'],
      date: DateTime(2022, 8),
    ),
    ProjectCard(
      categoryIndex: 3,
      title: 'Light Utopia',
      description: 'Cinematic / Freestyle FPV',
      image: 'images/media/light-utopia/light-utopia.jpg',
      tags: const ['Media', 'FPV', 'RS3'],
      date: DateTime(2022, 8, 12),
    ),
    ProjectCard(
      categoryIndex: 2,
      title: 'Studiportal',
      description: 'Die neue Studiportal-App mit OneUI-Design.',
      image: 'images/apps/studiportal/app_icon.png',
      tags: const ['Apps', 'OneUI'],
      date: DateTime(2022, 7),
    ),
    ProjectCard(
      categoryIndex: 2,
      title: 'NAK Buch',
      description: 'Die neue nicht-offizielle Liederbuch-App der Neuapostolischen Kirche.',
      image: 'images/apps/nakbuch/app_icon.jpg',
      tags: const ['Apps', 'OneUI'],
      date: DateTime(2021, 11),
    ),
    ProjectCard(
      categoryIndex: 3,
      title: 'Accelerate',
      description: 'Cinematic / Freestyle FPV',
      image: 'images/media/accelerate/accelerate2.jpg',
      tags: const ['Media', 'FPV', 'RS3'],
      date: DateTime(2021, 5, 7),
    ),
  ];
  if (screenSelected != null) {
    projects = projects.where((project) => project.categoryIndex == screenSelected.index).toList();
  }
  return projects;
}

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({super.key, this.screenSelected});

  final ScreenSelected? screenSelected;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverLayoutBuilder(builder: (context, constraints) {
        if (MediaQuery.of(context).size.width > largeWidthBreakpoint) {
          return SliverGrid.count(
            crossAxisCount: 5,
            children: projectCards(screenSelected),
          );
        } else if (MediaQuery.of(context).size.width > mediumWidthBreakpoint) {
          return SliverGrid.count(
            crossAxisCount: 3,
            children: projectCards(screenSelected),
          );
        } else if (MediaQuery.of(context).size.width > narrowScreenWidthThreshold) {
          return SliverGrid.count(
            crossAxisCount: 2,
            children: projectCards(screenSelected),
          );
        } else {
          return SliverGrid.count(
            crossAxisCount: 1,
            children: projectCards(screenSelected),
          );
        }
      }),
    );
  }
}

class ProjectCard extends StatefulWidget {
  const ProjectCard(
      {super.key,
      required this.categoryIndex,
      required this.title,
      required this.description,
      required this.image,
      required this.tags,
      required this.date});

  final int categoryIndex;
  final String title;
  final String description;
  final String image;
  final List<String> tags;
  final DateTime date;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16.0));
    final Color color = Theme.of(context).colorScheme.surface;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: borderRadius,
        //elevation: _elevation,
        color: color,
        //shadowColor: widget.shadowColor,
        //surfaceTintColor: widget.surfaceTint,
        type: MaterialType.card,
        //add background image
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: borderRadius,
              child: Image.asset(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
            //add gradient
            Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                  ],
                ),
              ),
            ),
            //add text
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge?.apply(color: Colors.white),
                  ),
                  Text(
                    widget.description,
                    style: Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
