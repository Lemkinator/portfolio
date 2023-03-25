import 'media.dart';

class App {
  final String id;
  final String title;
  final Media author;
  final bool isPopular;
  final bool isNew;

  App(this.id, this.title, this.isPopular, this.isNew, this.author);
}
