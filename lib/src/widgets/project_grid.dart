import 'package:flutter/material.dart';

import '../data.dart';
import '../routing.dart';

class ProjectGrid extends StatelessWidget {
  final List<Project> projects;

  const ProjectGrid({
    required this.projects,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SliverPadding(
    padding: const EdgeInsets.only(left: 16),
    sliver: SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 1,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => ProjectCard(
          project: projects[index],
          onTap: (project) => RouteStateScope.of(context).go(project.route)
        ),
        childCount: projects.length,
      ),
    ),
  );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
    this.onTap,
  });

  final Project project;
  final ValueChanged<Project>? onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 16, 16),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          onTap: onTap != null ? () => onTap!(project) : null,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: Image.asset(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  project.image,
                  fit: BoxFit.cover,
                ),
              ),
              //add gradient
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
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
                      project.title,
                      style: Theme.of(context).textTheme.titleLarge?.apply(color: Colors.white),
                    ),
                    Text(
                      project.description,
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
