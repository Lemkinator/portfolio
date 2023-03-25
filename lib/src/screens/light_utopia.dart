import 'package:flutter/material.dart';

class LightUtopiaScreen extends StatelessWidget {
  const LightUtopiaScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Light Utopia'),
      ),
      body: Center(
        child: Text(
              'Light Utopia',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        ),
    );
  }
}
