import 'package:flutter/material.dart';

class AccelerateScreen extends StatelessWidget {
  const AccelerateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accelerate'),
      ),
      body: Center(
        child: Text(
          'Accelerate',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
