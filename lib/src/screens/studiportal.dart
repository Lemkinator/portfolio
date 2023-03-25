import 'package:flutter/material.dart';

class StudiportalScreen extends StatelessWidget {
  const StudiportalScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studiportal'),
      ),
      body: Center(
        child: Text(
              'Studiportal',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        ),
    );
  }
}

class StudiportalPrivacyPolicyScreen extends StatelessWidget {
  const StudiportalPrivacyPolicyScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studiportal Privacy Policy'),
      ),
      body: Center(
        child: Text(
              'Studiportal Privacy Policy',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        ),
    );
  }
}
