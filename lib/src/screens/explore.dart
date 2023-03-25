import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  final String title = 'Explore';

  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(),
      );
}
