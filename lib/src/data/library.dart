import '../data.dart';
import '../localization.dart';

final libraryInstance = Library()
  ..addProject(
    id: 'sudoku',
    category: 'apps',
    title: S.current.sudoku,
    description: S.current.sudokuDescription,
    image: 'images/apps/sudoku/app_icon.png',
    route: '/apps/sudoku',
    tags: [S.current.apps, S.current.oneui, S.current.game],
    date: DateTime(2022, 8),
  )
  ..addProject(
    id: 'light-utopia',
    category: 'media',
    title: S.current.lightUtopia,
    description: S.current.cinematicFreestyleFpv,
    image: 'images/media/light-utopia/light-utopia.jpg',
    route: '/media/light-utopia',
    tags: [S.current.media, 'FPV', 'RS3'],
    date: DateTime(2022, 8, 12),
  )
  ..addProject(
    id: 'studiportal',
    category: 'apps',
    title: S.current.studiportal,
    description: S.current.studiportalDescription,
    image: 'images/apps/studiportal/app_icon.png',
    route: '/apps/studiportal',
    tags: [S.current.apps, S.current.oneui],
    date: DateTime(2022, 7),
  )
  ..addProject(
    id: 'nakbuch',
    category: 'apps',
    title: S.current.nakBuch,
    description: S.current.nakBuchDescription,
    image: 'images/apps/nakbuch/app_icon.jpg',
    route: '/apps/nakbuch',
    tags: [S.current.apps, S.current.oneui],
    date: DateTime(2021, 11),
  )
  ..addProject(
    id: 'accelerate',
    category: 'media',
    title: S.current.accelerate,
    description: S.current.cinematicFreestyleFpv,
    image: 'images/media/accelerate/accelerate2.jpg',
    route: '/media/accelerate',
    tags: [S.current.media, 'FPV', 'RS3'],
    date: DateTime(2021, 5, 7),
  );

class Library {
  final List<Project> allProjects = [];
  final List<Project> categories = [
    Project(
      id: 'apps',
      category: 'apps',
      title: S.current.apps,
      description: S.current.appsDescription,
      image: 'images/apps/oneUI/OneUIBanner.jpg',
      route: '/apps',
      tags: [S.current.apps],
      date: DateTime(2021, 11),
    ),
    Project(
      id: 'media',
      category: 'media',
      title: S.current.media,
      description: S.current.cinematicFreestyleFpv,
      image: 'images/media/evoque_v2.jpg',
      route: '/media',
      tags: [S.current.media],
      date: DateTime(2021, 11),
    ),
  ];

  void addProject({
    required String id,
    required String category,
    required String title,
    required String description,
    required List<String> tags,
    required String image,
    required String route,
    required DateTime date,
  }) {
    var project = Project(
      id: id,
      category: category,
      title: title,
      description: description,
      tags: tags,
      image: image,
      route: route,
      date: date,
    );
    allProjects.add(project);
  }

  List<Project> get apps => [
        ...allProjects.where((project) => project.category == 'apps'),
      ];

  List<Project> get media => [
        ...allProjects.where((project) => project.category == 'media'),
      ];
}
