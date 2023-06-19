import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'src/app.dart';

void main() {
  //usePathUrlStrategy(); //Dont use "/#/" in the address bar. You may need to configure your web server to redirect all paths to index.html.
  setupWindow();
  runApp(const Home());
}

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Leonard Lemke');
  }
}
