import 'package:flutter/material.dart';
import '../screens.dart';
import '../widgets.dart';
import '../data.dart';
import '../localization.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverBanner(
            title: _getTitle(widget.category),
            subtitle: _getSubtitle(widget.category),
            backgroundImage: _getBackgroundImage(widget.category),
          ),
          ProjectGrid(projects: projects),
          const SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),
          widget.category == 'media'
              ? const MediaMoreInfo()
              : widget.category == 'apps'
                  ? const AppsMoreInfo()
                  : Container(),
        ],
      ),
    );
  }
}

String _getSubtitle(String? category) {
  if (category == 'apps') {
    return S.current.appsDescription;
  } else if (category == 'media') {
    return S.current.cinematicFreestyleFpv;
  }
  return '';
}

String _getTitle(String? category) {
  if (category == 'apps') {
    return S.current.apps;
  } else if (category == 'media') {
    return S.current.media;
  }
  return '';
}

String _getBackgroundImage(String? category) {
  if (category == 'apps') {
    return 'images/apps/oneUI/OneUIBanner.jpg';
  } else if (category == 'media') {
    return 'images/media/evoque_v2.jpg';
  }
  return 'images/logo/Banner_named.jpg';
}
