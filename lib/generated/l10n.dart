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

  /// `be.ai`
  String get title {
    return Intl.message(
      'be.ai',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message(
      'Login',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// `Sigh up`
  String get SighUp {
    return Intl.message(
      'Sigh up',
      name: 'SighUp',
      desc: '',
      args: [],
    );
  }

  /// `No account?`
  String get NoAccount {
    return Intl.message(
      'No account?',
      name: 'NoAccount',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to be.ai - you intuitive nutrition assistant!`
  String get WelcomeToBEAI {
    return Intl.message(
      'Welcome to be.ai - you intuitive nutrition assistant!',
      name: 'WelcomeToBEAI',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get RepeatPassword {
    return Intl.message(
      'Repeat password',
      name: 'RepeatPassword',
      desc: '',
      args: [],
    );
  }

  /// `Questionnaire`
  String get Questionnaire {
    return Intl.message(
      'Questionnaire',
      name: 'Questionnaire',
      desc: '',
      args: [],
    );
  }

  /// `Common`
  String get Common {
    return Intl.message(
      'Common',
      name: 'Common',
      desc: '',
      args: [],
    );
  }

  /// `Meal`
  String get Meal {
    return Intl.message(
      'Meal',
      name: 'Meal',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get Activity {
    return Intl.message(
      'Activity',
      name: 'Activity',
      desc: '',
      args: [],
    );
  }

  /// `Common questions`
  String get CommonQuestions {
    return Intl.message(
      'Common questions',
      name: 'CommonQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Eating habits`
  String get EatingHabits {
    return Intl.message(
      'Eating habits',
      name: 'EatingHabits',
      desc: '',
      args: [],
    );
  }

  /// `Physical activity`
  String get PhysicalActivity {
    return Intl.message(
      'Physical activity',
      name: 'PhysicalActivity',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Return`
  String get Return {
    return Intl.message(
      'Return',
      name: 'Return',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get Account {
    return Intl.message(
      'Account',
      name: 'Account',
      desc: '',
      args: [],
    );
  }

  /// `Diary`
  String get Diary {
    return Intl.message(
      'Diary',
      name: 'Diary',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get Camera {
    return Intl.message(
      'Camera',
      name: 'Camera',
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
      Locale.fromSubtags(languageCode: 'ru'),
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
