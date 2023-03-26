import 'package:portfolio/src/data.dart';

final libraryInstance = Library()
  ..addProject(
    id: 'sudoku',
    category: 'apps',
    title: 'Sudoku',
    description: 'Eine Sudoku App im schönen OneUI-Design.',
    image: 'images/apps/sudoku/app_icon.png',
    tags: const ['Apps', 'OneUI', 'Spiel'],
    date: DateTime(2022, 8),
  )
  ..addProject(
    id: 'light-utopia',
    category: 'media',
    title: 'Light Utopia',
    description: 'Cinematic / Freestyle FPV',
    image: 'images/media/light-utopia/light-utopia.jpg',
    tags: const ['Media', 'FPV', 'RS3'],
    date: DateTime(2022, 8, 12),
  )
  ..addProject(
    id: 'studiportal',
    category: 'apps',
    title: 'Studiportal',
    description: 'Die neue Studiportal-App mit OneUI-Design.',
    image: 'images/apps/studiportal/app_icon.png',
    tags: const ['Apps', 'OneUI'],
    date: DateTime(2022, 7),
  )
  ..addProject(
    id: 'nakbuch',
    category: 'apps',
    title: 'NAK Buch',
    description: 'Die neue nicht-offizielle Liederbuch-App der Neuapostolischen Kirche.',
    image: 'images/apps/nakbuch/app_icon.jpg',
    tags: const ['Apps', 'OneUI'],
    date: DateTime(2021, 11),
  )
  ..addProject(
    id: 'accelerate',
    category: 'media',
    title: 'Accelerate',
    description: 'Cinematic / Freestyle FPV',
    image: 'images/media/accelerate/accelerate2.jpg',
    tags: const ['Media', 'FPV', 'RS3'],
    date: DateTime(2021, 5, 7),
  );

class Library {
  final List<Project> allProjects = [];

  void addProject({
    required String id,
    required String category,
    required String title,
    required String description,
    required List<String> tags,
    required String image,
    required DateTime date,
  }) {
    var project = Project(
      id: id,
      category: category,
      title: title,
      description: description,
      tags: tags,
      image: image,
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
