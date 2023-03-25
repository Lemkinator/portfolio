class Project {
  final String id;
  final String category;
  final String title;
  final String description;
  final List<String> tags;
  final String image;
  final DateTime date;

  Project({
    required this.id,
    required this.category,
    required this.title,
    required this.description,
    required this.tags,
    required this.image,
    required this.date,
  });
}
