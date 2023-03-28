// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: 'The conventional newborn programmer greeting',
      args: [],
    );
  }

  /// `Hello {userName}`
  String hello(String userName) {
    return Intl.message(
      'Hello $userName',
      name: 'hello',
      desc: 'A message with a single parameter',
      args: [userName],
    );
  }

  /// `Explore`
  String get explore {
    return Intl.message(
      'Explore',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Apps`
  String get apps {
    return Intl.message(
      'Apps',
      name: 'apps',
      desc: '',
      args: [],
    );
  }

  /// `Media`
  String get media {
    return Intl.message(
      'Media',
      name: 'media',
      desc: '',
      args: [],
    );
  }

  /// `M3 Baseline`
  String get colorBaseline {
    return Intl.message(
      'M3 Baseline',
      name: 'colorBaseline',
      desc: '',
      args: [],
    );
  }

  /// `Indigo`
  String get colorIndigo {
    return Intl.message(
      'Indigo',
      name: 'colorIndigo',
      desc: '',
      args: [],
    );
  }

  /// `Blue`
  String get colorBlue {
    return Intl.message(
      'Blue',
      name: 'colorBlue',
      desc: '',
      args: [],
    );
  }

  /// `Teal`
  String get colorTeal {
    return Intl.message(
      'Teal',
      name: 'colorTeal',
      desc: '',
      args: [],
    );
  }

  /// `Green`
  String get colorGreen {
    return Intl.message(
      'Green',
      name: 'colorGreen',
      desc: '',
      args: [],
    );
  }

  /// `Yellow`
  String get colorYellow {
    return Intl.message(
      'Yellow',
      name: 'colorYellow',
      desc: '',
      args: [],
    );
  }

  /// `Orange`
  String get colorOrange {
    return Intl.message(
      'Orange',
      name: 'colorOrange',
      desc: '',
      args: [],
    );
  }

  /// `Deep Orange`
  String get colorDeepOrange {
    return Intl.message(
      'Deep Orange',
      name: 'colorDeepOrange',
      desc: '',
      args: [],
    );
  }

  /// `Pink`
  String get colorPink {
    return Intl.message(
      'Pink',
      name: 'colorPink',
      desc: '',
      args: [],
    );
  }

  /// `Select a seed color`
  String get selectASeedColor {
    return Intl.message(
      'Select a seed color',
      name: 'selectASeedColor',
      desc: '',
      args: [],
    );
  }

  /// `Toggle light`
  String get toggleLight {
    return Intl.message(
      'Toggle light',
      name: 'toggleLight',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Those looking for quick success should not program, but chop wood.`
  String get mySlogan {
    return Intl.message(
      'Those looking for quick success should not program, but chop wood.',
      name: 'mySlogan',
      desc: '',
      args: [],
    );
  }

  /// `Study Plus Mathem.-Tech. Softwaredeveloper`
  String get myJob {
    return Intl.message(
      'Study Plus Mathem.-Tech. Softwaredeveloper',
      name: 'myJob',
      desc: '',
      args: [],
    );
  }

  /// `Hello, my name is Leonard. Besides my passion for technology, smartphones, Android and computer games, I like to program apps for Android in OneUI style or edit videos that I record with my racing drone.`
  String get myDescription {
    return Intl.message(
      'Hello, my name is Leonard. Besides my passion for technology, smartphones, Android and computer games, I like to program apps for Android in OneUI style or edit videos that I record with my racing drone.',
      name: 'myDescription',
      desc: '',
      args: [],
    );
  }

  /// `Apprenticeship`
  String get apprenticeship {
    return Intl.message(
      'Apprenticeship',
      name: 'apprenticeship',
      desc: '',
      args: [],
    );
  }

  /// `September 2019 - July 2021`
  String get apprenticeshipDate {
    return Intl.message(
      'September 2019 - July 2021',
      name: 'apprenticeshipDate',
      desc: '',
      args: [],
    );
  }

  /// `Mathem. tech. Softwaredeveloper`
  String get apprenticeshipJob {
    return Intl.message(
      'Mathem. tech. Softwaredeveloper',
      name: 'apprenticeshipJob',
      desc: '',
      args: [],
    );
  }

  /// `Kaufmännischen und Hauswirtschaftlichen Schulen Donaueschingen / Continental AG`
  String get apprenticeshipLocations {
    return Intl.message(
      'Kaufmännischen und Hauswirtschaftlichen Schulen Donaueschingen / Continental AG',
      name: 'apprenticeshipLocations',
      desc: '',
      args: [],
    );
  }

  /// `Study: Bachelor of Science`
  String get study {
    return Intl.message(
      'Study: Bachelor of Science',
      name: 'study',
      desc: '',
      args: [],
    );
  }

  /// `September 2019 - February 2024`
  String get studyDate {
    return Intl.message(
      'September 2019 - February 2024',
      name: 'studyDate',
      desc: '',
      args: [],
    );
  }

  /// `General Computer Science (Specialization Software Engineering)`
  String get studySpecialization {
    return Intl.message(
      'General Computer Science (Specialization Software Engineering)',
      name: 'studySpecialization',
      desc: '',
      args: [],
    );
  }

  /// `Furtwangen University (HFU) / Continental AG`
  String get studyLocations {
    return Intl.message(
      'Furtwangen University (HFU) / Continental AG',
      name: 'studyLocations',
      desc: '',
      args: [],
    );
  }

  /// `Sudoku`
  String get sudoku {
    return Intl.message(
      'Sudoku',
      name: 'sudoku',
      desc: '',
      args: [],
    );
  }

  /// `A Sudoku app with OneUI-Design.`
  String get sudokuDescription {
    return Intl.message(
      'A Sudoku app with OneUI-Design.',
      name: 'sudokuDescription',
      desc: '',
      args: [],
    );
  }

  /// `Light Utopia`
  String get lightUtopia {
    return Intl.message(
      'Light Utopia',
      name: 'lightUtopia',
      desc: '',
      args: [],
    );
  }

  /// `Cinematic / Freestyle FPV`
  String get cinematicFreestyleFpv {
    return Intl.message(
      'Cinematic / Freestyle FPV',
      name: 'cinematicFreestyleFpv',
      desc: '',
      args: [],
    );
  }

  /// `Studiportal`
  String get studiportal {
    return Intl.message(
      'Studiportal',
      name: 'studiportal',
      desc: '',
      args: [],
    );
  }

  /// `The new Studiportal app with OneUI-Design.`
  String get studiportalDescription {
    return Intl.message(
      'The new Studiportal app with OneUI-Design.',
      name: 'studiportalDescription',
      desc: '',
      args: [],
    );
  }

  /// `NAK Buch`
  String get nakBuch {
    return Intl.message(
      'NAK Buch',
      name: 'nakBuch',
      desc: '',
      args: [],
    );
  }

  /// `The new non-official songbook app of the New Apostolic Church.`
  String get nakBuchDescription {
    return Intl.message(
      'The new non-official songbook app of the New Apostolic Church.',
      name: 'nakBuchDescription',
      desc: '',
      args: [],
    );
  }

  /// `Accelerate`
  String get accelerate {
    return Intl.message(
      'Accelerate',
      name: 'accelerate',
      desc: '',
      args: [],
    );
  }

  /// `OneUI`
  String get oneui {
    return Intl.message(
      'OneUI',
      name: 'oneui',
      desc: '',
      args: [],
    );
  }

  /// `Game`
  String get game {
    return Intl.message(
      'Game',
      name: 'game',
      desc: '',
      args: [],
    );
  }

  /// `Modern Apps in Samsungs OneUI-Style.`
  String get appsDescription {
    return Intl.message(
      'Modern Apps in Samsungs OneUI-Style.',
      name: 'appsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get projects {
    return Intl.message(
      'Projects',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `All Projects`
  String get allProjects {
    return Intl.message(
      'All Projects',
      name: 'allProjects',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
