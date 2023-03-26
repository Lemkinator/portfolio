import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/project_grid.dart';

import '../data.dart';
import '../routing.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({
    super.key,
    this.category,
  });

  final String? category;

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var projects = libraryInstance.allProjects;
    if (widget.category == 'apps') {
      projects = libraryInstance.apps;
    } else if (widget.category == 'media') {
      projects = libraryInstance.media;
    }

    return Scaffold(
      body: ProjectGrid(
        projects: projects,
        onTap: _handleAppTapped,
      ),
    );
  }

  RouteState get _routeState => RouteStateScope.of(context);

  void _handleAppTapped(Project project) {
    _routeState.go('/${project.category}/${project.id}');
  }
}