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

  /// `Leonard Lemke`
  String get leo {
    return Intl.message(
      'Leonard Lemke',
      name: 'leo',
      desc: '',
      args: [],
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

  /// `"Those looking for quick success should not program, but chop wood."`
  String get mySlogan {
    return Intl.message(
      '"Those looking for quick success should not program, but chop wood."',
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

  /// `One UI`
  String get oneUi {
    return Intl.message(
      'One UI',
      name: 'oneUi',
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

  /// `What is Cinematic/Freestyle FPV?`
  String get whatIsFpv {
    return Intl.message(
      'What is Cinematic/Freestyle FPV?',
      name: 'whatIsFpv',
      desc: '',
      args: [],
    );
  }

  /// `First-person view (FPV) is a method where a radio-controlled aircraft (drone) is piloted remotely from a first-person perspective via an onboard camera, fed wirelessly to video FPV goggles.`
  String get whatIsFpv1 {
    return Intl.message(
      'First-person view (FPV) is a method where a radio-controlled aircraft (drone) is piloted remotely from a first-person perspective via an onboard camera, fed wirelessly to video FPV goggles.',
      name: 'whatIsFpv1',
      desc: '',
      args: [],
    );
  }

  /// `Freestyle FPV is all about flying skills and doing nice tricks or movements.`
  String get whatIsFpv2 {
    return Intl.message(
      'Freestyle FPV is all about flying skills and doing nice tricks or movements.',
      name: 'whatIsFpv2',
      desc: '',
      args: [],
    );
  }

  /// `Cinematic FPV content tends to be slower and smoother than Freestyle FPV. The settings are chosen more for their visual attraction than for the technical flying skills they demand.`
  String get whatIsFpv3 {
    return Intl.message(
      'Cinematic FPV content tends to be slower and smoother than Freestyle FPV. The settings are chosen more for their visual attraction than for the technical flying skills they demand.',
      name: 'whatIsFpv3',
      desc: '',
      args: [],
    );
  }

  /// `What is special about FPV?`
  String get whatIsSpecialAboutFpv {
    return Intl.message(
      'What is special about FPV?',
      name: 'whatIsSpecialAboutFpv',
      desc: '',
      args: [],
    );
  }

  /// `The difference to normal drone pilots is that FPV pilots mostly build their drone(s) themselves.`
  String get whatIsSpecialAboutFpv1 {
    return Intl.message(
      'The difference to normal drone pilots is that FPV pilots mostly build their drone(s) themselves.',
      name: 'whatIsSpecialAboutFpv1',
      desc: '',
      args: [],
    );
  }

  /// `This includes:`
  String get whatIsSpecialAboutFpv2 {
    return Intl.message(
      'This includes:',
      name: 'whatIsSpecialAboutFpv2',
      desc: '',
      args: [],
    );
  }

  /// `Search and buy parts`
  String get whatIsSpecialAboutFpv3 {
    return Intl.message(
      'Search and buy parts',
      name: 'whatIsSpecialAboutFpv3',
      desc: '',
      args: [],
    );
  }

  /// `Assembling the drone`
  String get whatIsSpecialAboutFpv4 {
    return Intl.message(
      'Assembling the drone',
      name: 'whatIsSpecialAboutFpv4',
      desc: '',
      args: [],
    );
  }

  /// `Setting up the drone (Software)`
  String get whatIsSpecialAboutFpv5 {
    return Intl.message(
      'Setting up the drone (Software)',
      name: 'whatIsSpecialAboutFpv5',
      desc: '',
      args: [],
    );
  }

  /// `Furthermore, it requires much more practice, since FPV drones are usually flown in acro mode (acrobatic mode: e.g. when releasing the control sticks, the drone does not automatically level itself or if you move the sticks forward, the drone will pitch forward continuously instead of accelerating forward...).`
  String get whatIsSpecialAboutFpv6 {
    return Intl.message(
      'Furthermore, it requires much more practice, since FPV drones are usually flown in acro mode (acrobatic mode: e.g. when releasing the control sticks, the drone does not automatically level itself or if you move the sticks forward, the drone will pitch forward continuously instead of accelerating forward...).',
      name: 'whatIsSpecialAboutFpv6',
      desc: '',
      args: [],
    );
  }

  /// `But the practice is worth it, because flying FPV is incredibly fun!`
  String get whatIsSpecialAboutFpv7 {
    return Intl.message(
      'But the practice is worth it, because flying FPV is incredibly fun!',
      name: 'whatIsSpecialAboutFpv7',
      desc: '',
      args: [],
    );
  }

  /// `What got me into FPV?`
  String get whatGotMeIntoFpv {
    return Intl.message(
      'What got me into FPV?',
      name: 'whatGotMeIntoFpv',
      desc: '',
      args: [],
    );
  }

  /// `The journey began with a normal consumer drone...`
  String get journey1 {
    return Intl.message(
      'The journey began with a normal consumer drone...',
      name: 'journey1',
      desc: '',
      args: [],
    );
  }

  /// `... but ended very early with a broken drone and the fact, that its nearly impossible to repair those drones by your own.`
  String get journey2 {
    return Intl.message(
      '... but ended very early with a broken drone and the fact, that its nearly impossible to repair those drones by your own.',
      name: 'journey2',
      desc: '',
      args: [],
    );
  }

  /// `Since the repair at the manufacturer is quite expensive, i decided to build a drone myself... Which turned out not to be cheaper...`
  String get journey3 {
    return Intl.message(
      'Since the repair at the manufacturer is quite expensive, i decided to build a drone myself... Which turned out not to be cheaper...',
      name: 'journey3',
      desc: '',
      args: [],
    );
  }

  /// `After researching for the needed parts, the assembly began.`
  String get journey4 {
    return Intl.message(
      'After researching for the needed parts, the assembly began.',
      name: 'journey4',
      desc: '',
      args: [],
    );
  }

  /// `Assembling and wiring...`
  String get journey5 {
    return Intl.message(
      'Assembling and wiring...',
      name: 'journey5',
      desc: '',
      args: [],
    );
  }

  /// `Getting the Hardware ready...`
  String get journey6 {
    return Intl.message(
      'Getting the Hardware ready...',
      name: 'journey6',
      desc: '',
      args: [],
    );
  }

  /// `Setup and configuration of the software...`
  String get journey7 {
    return Intl.message(
      'Setup and configuration of the software...',
      name: 'journey7',
      desc: '',
      args: [],
    );
  }

  /// `Done!`
  String get journey8 {
    return Intl.message(
      'Done!',
      name: 'journey8',
      desc: '',
      args: [],
    );
  }

  /// `Well (after a few encounters with the snowy ground)... seems a lot more durable than the drone before...`
  String get journey9 {
    return Intl.message(
      'Well (after a few encounters with the snowy ground)... seems a lot more durable than the drone before...',
      name: 'journey9',
      desc: '',
      args: [],
    );
  }

  /// `Setup`
  String get setup {
    return Intl.message(
      'Setup',
      name: 'setup',
      desc: '',
      args: [],
    );
  }

  /// `Links`
  String get links {
    return Intl.message(
      'Links',
      name: 'links',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Source Code`
  String get sourceCode {
    return Intl.message(
      'Source Code',
      name: 'sourceCode',
      desc: '',
      args: [],
    );
  }

  /// `Features`
  String get features {
    return Intl.message(
      'Features',
      name: 'features',
      desc: '',
      args: [],
    );
  }

  /// `Other Features`
  String get otherFeatures {
    return Intl.message(
      'Other Features',
      name: 'otherFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Screenshots`
  String get screenshots {
    return Intl.message(
      'Screenshots',
      name: 'screenshots',
      desc: '',
      args: [],
    );
  }

  /// `Windows 11 support`
  String get windows11Support {
    return Intl.message(
      'Windows 11 support',
      name: 'windows11Support',
      desc: '',
      args: [],
    );
  }

  /// `To use mobile apps on a Windows 11 PC, the`
  String get windows11Support1 {
    return Intl.message(
      'To use mobile apps on a Windows 11 PC, the',
      name: 'windows11Support1',
      desc: '',
      args: [],
    );
  }

  /// `ms-windows-store://pdp/?productid=9NJHK44TTKSX`
  String get windows11Support2 {
    return Intl.message(
      'ms-windows-store://pdp/?productid=9NJHK44TTKSX',
      name: 'windows11Support2',
      desc: '',
      args: [],
    );
  }

  /// `Amazon Appstore`
  String get windows11Support3 {
    return Intl.message(
      'Amazon Appstore',
      name: 'windows11Support3',
      desc: '',
      args: [],
    );
  }

  /// `must be installed.`
  String get windows11Support4 {
    return Intl.message(
      'must be installed.',
      name: 'windows11Support4',
      desc: '',
      args: [],
    );
  }

  /// `https://support.microsoft.com/en-us/topic/f8d0abb5-44ad-47d8-b9fb-ad6b1459ff6c`
  String get windows11Support5 {
    return Intl.message(
      'https://support.microsoft.com/en-us/topic/f8d0abb5-44ad-47d8-b9fb-ad6b1459ff6c',
      name: 'windows11Support5',
      desc: '',
      args: [],
    );
  }

  /// `Install Amazon Appstore on Windows 11`
  String get windows11Support6 {
    return Intl.message(
      'Install Amazon Appstore on Windows 11',
      name: 'windows11Support6',
      desc: '',
      args: [],
    );
  }

  /// `This app is in no way affiliated with the New Apostolic Church or Verlag Friedrich Bischoff GmbH and contains only the copyright-free texts from the following books:`
  String get nakBuchDisclaimer {
    return Intl.message(
      'This app is in no way affiliated with the New Apostolic Church or Verlag Friedrich Bischoff GmbH and contains only the copyright-free texts from the following books:',
      name: 'nakBuchDisclaimer',
      desc: '',
      args: [],
    );
  }

  /// `Gesangbuch (320 of 438 songs)`
  String get nakBuchDisclaimer1 {
    return Intl.message(
      'Gesangbuch (320 of 438 songs)',
      name: 'nakBuchDisclaimer1',
      desc: '',
      args: [],
    );
  }

  /// `Chorbuch (206 of 462 songs)`
  String get nakBuchDisclaimer2 {
    return Intl.message(
      'Chorbuch (206 of 462 songs)',
      name: 'nakBuchDisclaimer2',
      desc: '',
      args: [],
    );
  }

  /// `Jugendliederbuch (41 of 102 songs)`
  String get nakBuchDisclaimer3 {
    return Intl.message(
      'Jugendliederbuch (41 of 102 songs)',
      name: 'nakBuchDisclaimer3',
      desc: '',
      args: [],
    );
  }

  /// `Ergänzungsheft zum Jugendliederbuch (3 of 20 songs)`
  String get nakBuchDisclaimer4 {
    return Intl.message(
      'Ergänzungsheft zum Jugendliederbuch (3 of 20 songs)',
      name: 'nakBuchDisclaimer4',
      desc: '',
      args: [],
    );
  }

  /// `For the remaining songs, the rights are still held by the authors, which is why they cannot be displayed or can only be displayed in part. The information on copyright has been checked with great care. If I have unwittingly made mistakes, please let me know and I will follow up immediately.`
  String get nakBuchDisclaimer5 {
    return Intl.message(
      'For the remaining songs, the rights are still held by the authors, which is why they cannot be displayed or can only be displayed in part. The information on copyright has been checked with great care. If I have unwittingly made mistakes, please let me know and I will follow up immediately.',
      name: 'nakBuchDisclaimer5',
      desc: '',
      args: [],
    );
  }

  /// `The administration of the rights is, among others, the responsibility of Verlag Friedrich Bischoff GmbH, which has itself published a (paid) app for the Gesangbuch and a (paid) app for the Chorbuch.`
  String get nakBuchDisclaimer6 {
    return Intl.message(
      'The administration of the rights is, among others, the responsibility of Verlag Friedrich Bischoff GmbH, which has itself published a (paid) app for the Gesangbuch and a (paid) app for the Chorbuch.',
      name: 'nakBuchDisclaimer6',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode (automatically adapts to the system settings)`
  String get darkModeAutomaticallyAdaptsToTheSystemSettings {
    return Intl.message(
      'Dark Mode (automatically adapts to the system settings)',
      name: 'darkModeAutomaticallyAdaptsToTheSystemSettings',
      desc: '',
      args: [],
    );
  }

  /// `Quick setting for mute/do not disturb mode`
  String get nakBuchQuickSettingForMutedoNotDisturbMode {
    return Intl.message(
      'Quick setting for mute/do not disturb mode',
      name: 'nakBuchQuickSettingForMutedoNotDisturbMode',
      desc: '',
      args: [],
    );
  }

  /// `Pleasant text view`
  String get nakBuchPleasantTextView {
    return Intl.message(
      'Pleasant text view',
      name: 'nakBuchPleasantTextView',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Date function (sung on...)`
  String get dateFunctionSungOn {
    return Intl.message(
      'Date function (sung on...)',
      name: 'dateFunctionSungOn',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Wear OS support`
  String get wearOsSupport {
    return Intl.message(
      'Wear OS support',
      name: 'wearOsSupport',
      desc: '',
      args: [],
    );
  }

  /// `Forgotten your smartphone? No problem, the text contents of the app can be displayed on the smartwatch without any problems (in a pleasant design).`
  String get wearOsSupportText {
    return Intl.message(
      'Forgotten your smartphone? No problem, the text contents of the app can be displayed on the smartwatch without any problems (in a pleasant design).',
      name: 'wearOsSupportText',
      desc: '',
      args: [],
    );
  }

  /// `https://www.amazon.com/gp/product/B0BJ13C4RH`
  String get nakBuchAmazonAppStoreLink {
    return Intl.message(
      'https://www.amazon.com/gp/product/B0BJ13C4RH',
      name: 'nakBuchAmazonAppStoreLink',
      desc: '',
      args: [],
    );
  }

  /// `NAK Buch in Amazon Appstore`
  String get nakBuchAmazonAppStore {
    return Intl.message(
      'NAK Buch in Amazon Appstore',
      name: 'nakBuchAmazonAppStore',
      desc: '',
      args: [],
    );
  }

  /// `NAK Buch was developed according to Samsung's One UI guidelines. For example, the title bar can be "dragged down" on large devices on any screen to ensure comfortable (one-handed) operation of the top buttons.`
  String get nakBuchOneUi {
    return Intl.message(
      'NAK Buch was developed according to Samsung\'s One UI guidelines. For example, the title bar can be "dragged down" on large devices on any screen to ensure comfortable (one-handed) operation of the top buttons.',
      name: 'nakBuchOneUi',
      desc: '',
      args: [],
    );
  }

  /// `Swipe Songs`
  String get nakBuchSwipeSongs {
    return Intl.message(
      'Swipe Songs',
      name: 'nakBuchSwipeSongs',
      desc: '',
      args: [],
    );
  }

  /// `Swipe to go to the next/previous song. Just like a real book.`
  String get nakBuchSwipeSongsText {
    return Intl.message(
      'Swipe to go to the next/previous song. Just like a real book.',
      name: 'nakBuchSwipeSongsText',
      desc: '',
      args: [],
    );
  }

  /// `Data Tab`
  String get nakBuchDataTab {
    return Intl.message(
      'Data Tab',
      name: 'nakBuchDataTab',
      desc: '',
      args: [],
    );
  }

  /// `Your personal data at a glance.`
  String get nakBuchDataTabText {
    return Intl.message(
      'Your personal data at a glance.',
      name: 'nakBuchDataTabText',
      desc: '',
      args: [],
    );
  }

  /// `Shortcuts`
  String get nakBuchShortcuts {
    return Intl.message(
      'Shortcuts',
      name: 'nakBuchShortcuts',
      desc: '',
      args: [],
    );
  }

  /// `Don't like all books in one app? With NAK Buch you can create a shortcut for each book.`
  String get nakBuchShortcutsText {
    return Intl.message(
      'Don\'t like all books in one app? With NAK Buch you can create a shortcut for each book.',
      name: 'nakBuchShortcutsText',
      desc: '',
      args: [],
    );
  }

  /// `Quick Actions`
  String get nakBuchQuickActions {
    return Intl.message(
      'Quick Actions',
      name: 'nakBuchQuickActions',
      desc: '',
      args: [],
    );
  }

  /// `To quickly mute your smartphone, activate Do Not Disturb mode or open the official app if the full lyrics cannot displayed.`
  String get nakBuchQuickActionsText {
    return Intl.message(
      'To quickly mute your smartphone, activate Do Not Disturb mode or open the official app if the full lyrics cannot displayed.',
      name: 'nakBuchQuickActionsText',
      desc: '',
      args: [],
    );
  }

  /// `Email: `
  String get email {
    return Intl.message(
      'Email: ',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `App`
  String get app {
    return Intl.message(
      'App',
      name: 'app',
      desc: '',
      args: [],
    );
  }

  /// `Provider/Operator`
  String get provider {
    return Intl.message(
      'Provider/Operator',
      name: 'provider',
      desc: '',
      args: [],
    );
  }

  /// `nakbuch@leonard-lemke.com`
  String get nakbuchEmail {
    return Intl.message(
      'nakbuch@leonard-lemke.com',
      name: 'nakbuchEmail',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Information`
  String get privacyInformation {
    return Intl.message(
      'Privacy Information',
      name: 'privacyInformation',
      desc: '',
      args: [],
    );
  }

  /// `The app does not collect or share user data.`
  String get PrivacyInformationNoDataCollected {
    return Intl.message(
      'The app does not collect or share user data.',
      name: 'PrivacyInformationNoDataCollected',
      desc: '',
      args: [],
    );
  }

  /// `Status of the data protection information`
  String get statusOfTheDataProtectionInformation {
    return Intl.message(
      'Status of the data protection information',
      name: 'statusOfTheDataProtectionInformation',
      desc: '',
      args: [],
    );
  }

  /// `We review our privacy information on a regular basis. We reserve the right to change the privacy notice at any time with or without notice. Please check back periodically to be notified of any changes. This statement was last updated on 04/19/2022.`
  String get nakBuchStatusPrivacyInformation {
    return Intl.message(
      'We review our privacy information on a regular basis. We reserve the right to change the privacy notice at any time with or without notice. Please check back periodically to be notified of any changes. This statement was last updated on 04/19/2022.',
      name: 'nakBuchStatusPrivacyInformation',
      desc: '',
      args: [],
    );
  }

  /// `This app is in no way affiliated with Furtwangen University and is only used to display the data from the Studiportal. The logo is used with the kind permission of the Strategy and Communication Department of Furtwangen University.`
  String get studiportalDisclaimer {
    return Intl.message(
      'This app is in no way affiliated with Furtwangen University and is only used to display the data from the Studiportal. The logo is used with the kind permission of the Strategy and Communication Department of Furtwangen University.',
      name: 'studiportalDisclaimer',
      desc: '',
      args: [],
    );
  }

  /// `Studiportal in Amazon Appstore`
  String get studiportalAmazonAppStore {
    return Intl.message(
      'Studiportal in Amazon Appstore',
      name: 'studiportalAmazonAppStore',
      desc: '',
      args: [],
    );
  }

  /// `https://www.amazon.com/gp/product/B0BW6HX7RG`
  String get studiportalAmazonAppStoreLink {
    return Intl.message(
      'https://www.amazon.com/gp/product/B0BW6HX7RG',
      name: 'studiportalAmazonAppStoreLink',
      desc: '',
      args: [],
    );
  }

  /// `Studiportal was developed according to Samsung's One UI guidelines. For example, the title bar can be "dragged down" on large devices on any screen to ensure comfortable (one-handed) operation of the top buttons.`
  String get studiportalOneUi {
    return Intl.message(
      'Studiportal was developed according to Samsung\'s One UI guidelines. For example, the title bar can be "dragged down" on large devices on any screen to ensure comfortable (one-handed) operation of the top buttons.',
      name: 'studiportalOneUi',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Receive a notification when changes occur in Studiportal.`
  String get studiportalNotifications {
    return Intl.message(
      'Receive a notification when changes occur in Studiportal.',
      name: 'studiportalNotifications',
      desc: '',
      args: [],
    );
  }

  /// `studiportal@leonard-lemke.com`
  String get studiportalEmail {
    return Intl.message(
      'studiportal@leonard-lemke.com',
      name: 'studiportalEmail',
      desc: '',
      args: [],
    );
  }

  /// `We review our privacy information on a regular basis. We reserve the right to change the privacy notice at any time with or without notice. Please check back periodically to be notified of any changes. This statement was last updated on 11/14/2022.`
  String get studiportalStatusPrivacyInformation {
    return Intl.message(
      'We review our privacy information on a regular basis. We reserve the right to change the privacy notice at any time with or without notice. Please check back periodically to be notified of any changes. This statement was last updated on 11/14/2022.',
      name: 'studiportalStatusPrivacyInformation',
      desc: '',
      args: [],
    );
  }

  /// `Sudoku fans listen up! Here is the ultimate app that will take your brain power to the next level. With thousands of sudokus in different levels of difficulty, there's something for everyone, from beginners to professionals. Numerous levels ensure ongoing fun and with the Google Play Games integration, you can unlock exciting achievements, compete with your friends and fight for a good rank in various leaderboards.`
  String get sudokuText1 {
    return Intl.message(
      'Sudoku fans listen up! Here is the ultimate app that will take your brain power to the next level. With thousands of sudokus in different levels of difficulty, there\'s something for everyone, from beginners to professionals. Numerous levels ensure ongoing fun and with the Google Play Games integration, you can unlock exciting achievements, compete with your friends and fight for a good rank in various leaderboards.',
      name: 'sudokuText1',
      desc: '',
      args: [],
    );
  }

  /// `But that's not all! The app also offers daily challenges to keep you fit. You can easily track your progress with comprehensive statistics and with the possibility to play offline, you'll be ready to challenge your brain anytime, anywhere.`
  String get sudokuText2 {
    return Intl.message(
      'But that\'s not all! The app also offers daily challenges to keep you fit. You can easily track your progress with comprehensive statistics and with the possibility to play offline, you\'ll be ready to challenge your brain anytime, anywhere.',
      name: 'sudokuText2',
      desc: '',
      args: [],
    );
  }

  /// `So what are you waiting for? Download the app from the Play Store now and let your brain shine!`
  String get sudokuText3 {
    return Intl.message(
      'So what are you waiting for? Download the app from the Play Store now and let your brain shine!',
      name: 'sudokuText3',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Sudoku in Amazon Appstore`
  String get sudokuAmazonAppStore {
    return Intl.message(
      'Sudoku in Amazon Appstore',
      name: 'sudokuAmazonAppStore',
      desc: '',
      args: [],
    );
  }

  /// `https://www.amazon.com/gp/product/B0BW6JPCB4`
  String get sudokuAmazonAppStoreLink {
    return Intl.message(
      'https://www.amazon.com/gp/product/B0BW6JPCB4',
      name: 'sudokuAmazonAppStoreLink',
      desc: '',
      args: [],
    );
  }

  /// `Sudoku was developed according to Samsung's One UI guidelines. For example, the title bar can be "dragged down" on large devices on any screen to ensure comfortable (one-handed) operation of the top buttons.`
  String get sudokuOneUi {
    return Intl.message(
      'Sudoku was developed according to Samsung\'s One UI guidelines. For example, the title bar can be "dragged down" on large devices on any screen to ensure comfortable (one-handed) operation of the top buttons.',
      name: 'sudokuOneUi',
      desc: '',
      args: [],
    );
  }

  /// `Google Play Games`
  String get googlePlayGames {
    return Intl.message(
      'Google Play Games',
      name: 'googlePlayGames',
      desc: '',
      args: [],
    );
  }

  /// `With Google Play Games integration, you can unlock exciting achievements, compete with your friends and earn a good rank in various leaderboards.`
  String get googlePlayGamesText {
    return Intl.message(
      'With Google Play Games integration, you can unlock exciting achievements, compete with your friends and earn a good rank in various leaderboards.',
      name: 'googlePlayGamesText',
      desc: '',
      args: [],
    );
  }

  /// `Sudoku Level`
  String get sudokuLevel {
    return Intl.message(
      'Sudoku Level',
      name: 'sudokuLevel',
      desc: '',
      args: [],
    );
  }

  /// `Play Sudoku levels with increasing difficulty and track your level progress.`
  String get sudokuLevelText {
    return Intl.message(
      'Play Sudoku levels with increasing difficulty and track your level progress.',
      name: 'sudokuLevelText',
      desc: '',
      args: [],
    );
  }

  /// `Daily Sudoku`
  String get dailySudoku {
    return Intl.message(
      'Daily Sudoku',
      name: 'dailySudoku',
      desc: '',
      args: [],
    );
  }

  /// `Play Sudoku every day and track your daily progress.`
  String get dailySudokuText {
    return Intl.message(
      'Play Sudoku every day and track your daily progress.',
      name: 'dailySudokuText',
      desc: '',
      args: [],
    );
  }

  /// `sudoku@leonard-lemke.com`
  String get sudokuEmail {
    return Intl.message(
      'sudoku@leonard-lemke.com',
      name: 'sudokuEmail',
      desc: '',
      args: [],
    );
  }

  /// `https://support.google.com/googleplay/topic/3114802?ref_topic=2952998`
  String get googlePlayGamesLink {
    return Intl.message(
      'https://support.google.com/googleplay/topic/3114802?ref_topic=2952998',
      name: 'googlePlayGamesLink',
      desc: '',
      args: [],
    );
  }

  /// `The data mentioned below is collected by`
  String get sudokuPrivacyPolicy1 {
    return Intl.message(
      'The data mentioned below is collected by',
      name: 'sudokuPrivacyPolicy1',
      desc: '',
      args: [],
    );
  }

  /// `,`
  String get sudokuPrivacyPolicy2 {
    return Intl.message(
      ',',
      name: 'sudokuPrivacyPolicy2',
      desc: '',
      args: [],
    );
  }

  /// ` provided that the user logs in or has activated the automatic login. `
  String get sudokuPrivacyPolicy3 {
    return Intl.message(
      ' provided that the user logs in or has activated the automatic login. ',
      name: 'sudokuPrivacyPolicy3',
      desc: '',
      args: [],
    );
  }

  /// `The Google Play Games services provide access for sign-in as well as services for game apps. Further settings, as well as the deletion of the data can be made in the Play Games profile.`
  String get sudokuPrivacyPolicy4 {
    return Intl.message(
      'The Google Play Games services provide access for sign-in as well as services for game apps. Further settings, as well as the deletion of the data can be made in the Play Games profile.',
      name: 'sudokuPrivacyPolicy4',
      desc: '',
      args: [],
    );
  }

  /// `Play Games profile privacy & other settings`
  String get playGamesProfilePrivacyOtherSettings {
    return Intl.message(
      'Play Games profile privacy & other settings',
      name: 'playGamesProfilePrivacyOtherSettings',
      desc: '',
      args: [],
    );
  }

  /// `https://support.google.com/googleplay/answer/3129346?ref_topic=9167070`
  String get playGamesProfilePrivacyOtherSettingsLink {
    return Intl.message(
      'https://support.google.com/googleplay/answer/3129346?ref_topic=9167070',
      name: 'playGamesProfilePrivacyOtherSettingsLink',
      desc: '',
      args: [],
    );
  }

  /// `Delete your Play Games profile and data`
  String get deleteYourPlayGamesProfileAndData {
    return Intl.message(
      'Delete your Play Games profile and data',
      name: 'deleteYourPlayGamesProfileAndData',
      desc: '',
      args: [],
    );
  }

  /// `https://support.google.com/googleplay/answer/9130646`
  String get deleteYourPlayGamesProfileAndDataLink {
    return Intl.message(
      'https://support.google.com/googleplay/answer/9130646',
      name: 'deleteYourPlayGamesProfileAndDataLink',
      desc: '',
      args: [],
    );
  }

  /// `Data encryption`
  String get dataEncryption {
    return Intl.message(
      'Data encryption',
      name: 'dataEncryption',
      desc: '',
      args: [],
    );
  }

  /// `For the collected end-user data listed on this page, Play Games Services encrypts the data in transit using HTTPS.`
  String get sudokuDataEncryption {
    return Intl.message(
      'For the collected end-user data listed on this page, Play Games Services encrypts the data in transit using HTTPS.',
      name: 'sudokuDataEncryption',
      desc: '',
      args: [],
    );
  }

  /// `Data collected`
  String get dataCollected {
    return Intl.message(
      'Data collected',
      name: 'dataCollected',
      desc: '',
      args: [],
    );
  }

  /// `Gamer Identity (Gamertag, avatar), analytics and diagnostics data and app activities (e.g. achievements, scores).`
  String get sudokuDataCollected {
    return Intl.message(
      'Gamer Identity (Gamertag, avatar), analytics and diagnostics data and app activities (e.g. achievements, scores).',
      name: 'sudokuDataCollected',
      desc: '',
      args: [],
    );
  }

  /// `Data deletion`
  String get dataDeletion {
    return Intl.message(
      'Data deletion',
      name: 'dataDeletion',
      desc: '',
      args: [],
    );
  }

  /// `Users can delete their account and all associated games data collected by Google through their`
  String get sudokuDataDeletion1 {
    return Intl.message(
      'Users can delete their account and all associated games data collected by Google through their',
      name: 'sudokuDataDeletion1',
      desc: '',
      args: [],
    );
  }

  /// `Play Games profile`
  String get googlePlayGamesProfile {
    return Intl.message(
      'Play Games profile',
      name: 'googlePlayGamesProfile',
      desc: '',
      args: [],
    );
  }

  /// `https://play.google.com/games/profile`
  String get googlePlayGamesProfileLink {
    return Intl.message(
      'https://play.google.com/games/profile',
      name: 'googlePlayGamesProfileLink',
      desc: '',
      args: [],
    );
  }

  /// `Google MyAccount`
  String get googleMyaccount {
    return Intl.message(
      'Google MyAccount',
      name: 'googleMyaccount',
      desc: '',
      args: [],
    );
  }

  /// `https://myaccount.google.com/`
  String get googleMyaccountLink {
    return Intl.message(
      'https://myaccount.google.com/',
      name: 'googleMyaccountLink',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get sudokuDataDeletion2 {
    return Intl.message(
      'or',
      name: 'sudokuDataDeletion2',
      desc: '',
      args: [],
    );
  }

  /// `.`
  String get sudokuDataDeletion3 {
    return Intl.message(
      '.',
      name: 'sudokuDataDeletion3',
      desc: '',
      args: [],
    );
  }

  /// `If Google collects Play Games Services data for an individual game, users can delete the data through their`
  String get sudokuDataDeletion4 {
    return Intl.message(
      'If Google collects Play Games Services data for an individual game, users can delete the data through their',
      name: 'sudokuDataDeletion4',
      desc: '',
      args: [],
    );
  }

  /// `.`
  String get sudokuDataDeletion5 {
    return Intl.message(
      '.',
      name: 'sudokuDataDeletion5',
      desc: '',
      args: [],
    );
  }

  /// `We review our privacy information on a regular basis. We reserve the right to change the privacy notice at any time with or without notice. Please check back periodically to be notified of any changes. This statement was last updated on 12/19/2022.`
  String get sudokuStatusPrivacyInformation {
    return Intl.message(
      'We review our privacy information on a regular basis. We reserve the right to change the privacy notice at any time with or without notice. Please check back periodically to be notified of any changes. This statement was last updated on 12/19/2022.',
      name: 'sudokuStatusPrivacyInformation',
      desc: '',
      args: [],
    );
  }

  /// `In Memoriam\nRS3`
  String get lightUtopiaSubtitle {
    return Intl.message(
      'In Memoriam\nRS3',
      name: 'lightUtopiaSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Impressions`
  String get impressions {
    return Intl.message(
      'Impressions',
      name: 'impressions',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get video {
    return Intl.message(
      'Video',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// `In Memoriam???`
  String get inMemoriam {
    return Intl.message(
      'In Memoriam???',
      name: 'inMemoriam',
      desc: '',
      args: [],
    );
  }

  /// `This is the last video with the Audi RS3, as it has now been sold...`
  String get lightUtopiaInMemoriamText1 {
    return Intl.message(
      'This is the last video with the Audi RS3, as it has now been sold...',
      name: 'lightUtopiaInMemoriamText1',
      desc: '',
      args: [],
    );
  }

  /// `Watch out, kids! This is what marriage does to you...`
  String get lightUtopiaInMemoriamText2 {
    return Intl.message(
      'Watch out, kids! This is what marriage does to you...',
      name: 'lightUtopiaInMemoriamText2',
      desc: '',
      args: [],
    );
  }

  /// `A media project started for fun...`
  String get accelerateSubtitle {
    return Intl.message(
      'A media project started for fun...',
      name: 'accelerateSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Trailer`
  String get trailer {
    return Intl.message(
      'Trailer',
      name: 'trailer',
      desc: '',
      args: [],
    );
  }

  /// `Driver |`
  String get driver {
    return Intl.message(
      'Driver |',
      name: 'driver',
      desc: '',
      args: [],
    );
  }

  /// `Credits`
  String get credits {
    return Intl.message(
      'Credits',
      name: 'credits',
      desc: '',
      args: [],
    );
  }

  /// `Directed by`
  String get directedBy {
    return Intl.message(
      'Directed by',
      name: 'directedBy',
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
