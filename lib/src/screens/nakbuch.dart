import 'package:flutter/material.dart';

class NAKBuchScreen extends StatelessWidget {
  const NAKBuchScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NAK Buch'),
      ),
      body: Center(
        child: Text(
              'NAK Buch',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        ),
    );
  }
}

class NAKBuchPrivacyPolicyScreen extends StatelessWidget {
  const NAKBuchPrivacyPolicyScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NAK Buch Privacy Policy'),
      ),
      body: Center(
        child: Text(
              'NAK Buch Privacy Policy',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        ),
    );
  }
}
