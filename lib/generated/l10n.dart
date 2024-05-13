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

  /// `Welcome to be.ai!`
  String get title {
    return Intl.message(
      'Welcome to be.ai!',
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

  /// `Daily report`
  String get DailyReport {
    return Intl.message(
      'Daily report',
      name: 'DailyReport',
      desc: '',
      args: [],
    );
  }

  /// `Carbohydrates`
  String get Carbohydrates {
    return Intl.message(
      'Carbohydrates',
      name: 'Carbohydrates',
      desc: '',
      args: [],
    );
  }

  /// `Fats`
  String get Fats {
    return Intl.message(
      'Fats',
      name: 'Fats',
      desc: '',
      args: [],
    );
  }

  /// `Proteins`
  String get Proteins {
    return Intl.message(
      'Proteins',
      name: 'Proteins',
      desc: '',
      args: [],
    );
  }

  /// `Fiber`
  String get Fiber {
    return Intl.message(
      'Fiber',
      name: 'Fiber',
      desc: '',
      args: [],
    );
  }

  /// `Your sex`
  String get YourSex {
    return Intl.message(
      'Your sex',
      name: 'YourSex',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get Male {
    return Intl.message(
      'Male',
      name: 'Male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get Female {
    return Intl.message(
      'Female',
      name: 'Female',
      desc: '',
      args: [],
    );
  }

  /// `Your age`
  String get YourAge {
    return Intl.message(
      'Your age',
      name: 'YourAge',
      desc: '',
      args: [],
    );
  }

  /// `Your height`
  String get YourHeight {
    return Intl.message(
      'Your height',
      name: 'YourHeight',
      desc: '',
      args: [],
    );
  }

  /// `Your weight`
  String get YourWeight {
    return Intl.message(
      'Your weight',
      name: 'YourWeight',
      desc: '',
      args: [],
    );
  }

  /// `Your desired weight`
  String get YourDesiredWeight {
    return Intl.message(
      'Your desired weight',
      name: 'YourDesiredWeight',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any of the following diseases?`
  String get DoYouHaveDiseases {
    return Intl.message(
      'Do you have any of the following diseases?',
      name: 'DoYouHaveDiseases',
      desc: '',
      args: [],
    );
  }

  /// `Diabetes mellitus`
  String get DiabetesMellitus {
    return Intl.message(
      'Diabetes mellitus',
      name: 'DiabetesMellitus',
      desc: '',
      args: [],
    );
  }

  /// `Atherosclerosis`
  String get Atherosclerosis {
    return Intl.message(
      'Atherosclerosis',
      name: 'Atherosclerosis',
      desc: '',
      args: [],
    );
  }

  /// `Polycystic ovary syndrome`
  String get PolycysticOvarySyndrome {
    return Intl.message(
      'Polycystic ovary syndrome',
      name: 'PolycysticOvarySyndrome',
      desc: '',
      args: [],
    );
  }

  /// `Thyroid disease`
  String get ThyroidDisease {
    return Intl.message(
      'Thyroid disease',
      name: 'ThyroidDisease',
      desc: '',
      args: [],
    );
  }

  /// `Gluten intolerance`
  String get GlutenIntolerance {
    return Intl.message(
      'Gluten intolerance',
      name: 'GlutenIntolerance',
      desc: '',
      args: [],
    );
  }

  /// `Any other (enter)`
  String get AnyOther {
    return Intl.message(
      'Any other (enter)',
      name: 'AnyOther',
      desc: '',
      args: [],
    );
  }

  /// `Are you taking any medications?`
  String get AreYouTakingMedications {
    return Intl.message(
      'Are you taking any medications?',
      name: 'AreYouTakingMedications',
      desc: '',
      args: [],
    );
  }

  /// `Do you play sports`
  String get DoYouPlaySports {
    return Intl.message(
      'Do you play sports',
      name: 'DoYouPlaySports',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get Yes {
    return Intl.message(
      'Yes',
      name: 'Yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get No {
    return Intl.message(
      'No',
      name: 'No',
      desc: '',
      args: [],
    );
  }

  /// `What aerobic exercises do you do?`
  String get WhatAerobicExercisesDoYouDo {
    return Intl.message(
      'What aerobic exercises do you do?',
      name: 'WhatAerobicExercisesDoYouDo',
      desc: '',
      args: [],
    );
  }

  /// `Walking`
  String get Walking {
    return Intl.message(
      'Walking',
      name: 'Walking',
      desc: '',
      args: [],
    );
  }

  /// `Running`
  String get Running {
    return Intl.message(
      'Running',
      name: 'Running',
      desc: '',
      args: [],
    );
  }

  /// `Cycling`
  String get Cycling {
    return Intl.message(
      'Cycling',
      name: 'Cycling',
      desc: '',
      args: [],
    );
  }

  /// `Swimming`
  String get Swimming {
    return Intl.message(
      'Swimming',
      name: 'Swimming',
      desc: '',
      args: [],
    );
  }

  /// `Fitness`
  String get Fitness {
    return Intl.message(
      'Fitness',
      name: 'Fitness',
      desc: '',
      args: [],
    );
  }

  /// `I am not doing it`
  String get IAmNotDoingIt {
    return Intl.message(
      'I am not doing it',
      name: 'IAmNotDoingIt',
      desc: '',
      args: [],
    );
  }

  /// `How often do you do aerobic exercises?`
  String get HowOftenDoYouDoAerobicExercises {
    return Intl.message(
      'How often do you do aerobic exercises?',
      name: 'HowOftenDoYouDoAerobicExercises',
      desc: '',
      args: [],
    );
  }

  /// `{interval} minutes per week`
  String NMinutesPerWeek(String interval) {
    return Intl.message(
      '$interval minutes per week',
      name: 'NMinutesPerWeek',
      desc: 'A message with a single parameter',
      args: [interval],
    );
  }

  /// `More than {n} minutes per week`
  String MoreThanNMinutesPerWeek(Object n) {
    return Intl.message(
      'More than $n minutes per week',
      name: 'MoreThanNMinutesPerWeek',
      desc: '',
      args: [n],
    );
  }

  /// `What strength exercises do you do?`
  String get WhatStrengthExercisesDoYouDo {
    return Intl.message(
      'What strength exercises do you do?',
      name: 'WhatStrengthExercisesDoYouDo',
      desc: '',
      args: [],
    );
  }

  /// `Free weight training`
  String get FreeWeightTraining {
    return Intl.message(
      'Free weight training',
      name: 'FreeWeightTraining',
      desc: '',
      args: [],
    );
  }

  /// `Training simulators`
  String get TrainingSimulators {
    return Intl.message(
      'Training simulators',
      name: 'TrainingSimulators',
      desc: '',
      args: [],
    );
  }

  /// `Yoga`
  String get Yoga {
    return Intl.message(
      'Yoga',
      name: 'Yoga',
      desc: '',
      args: [],
    );
  }

  /// `Pilates`
  String get Pilates {
    return Intl.message(
      'Pilates',
      name: 'Pilates',
      desc: '',
      args: [],
    );
  }

  /// `How often do you do strength exercises?`
  String get HowOftenDoYouDoStrengthExercises {
    return Intl.message(
      'How often do you do strength exercises?',
      name: 'HowOftenDoYouDoStrengthExercises',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any restrictions for playing sports?`
  String get DoYouHaveAnyRestrictionsForPlayingSports {
    return Intl.message(
      'Do you have any restrictions for playing sports?',
      name: 'DoYouHaveAnyRestrictionsForPlayingSports',
      desc: '',
      args: [],
    );
  }

  /// `How often do you skip breakfast in a week?`
  String get HowOftenDoYouSkipBreakfastInAWeek {
    return Intl.message(
      'How often do you skip breakfast in a week?',
      name: 'HowOftenDoYouSkipBreakfastInAWeek',
      desc: '',
      args: [],
    );
  }

  /// `How often do you drink sugary drinks (sodas, sweet tea, sweet coffee)`
  String get HowOftenDoYouDrinkSugaryDrinks {
    return Intl.message(
      'How often do you drink sugary drinks (sodas, sweet tea, sweet coffee)',
      name: 'HowOftenDoYouDrinkSugaryDrinks',
      desc: '',
      args: [],
    );
  }

  /// `One time per week or less`
  String get OneTimePerWeekOrLess {
    return Intl.message(
      'One time per week or less',
      name: 'OneTimePerWeekOrLess',
      desc: '',
      args: [],
    );
  }

  /// `{interval} times per week`
  String NTimesPerWeek(String interval) {
    return Intl.message(
      '$interval times per week',
      name: 'NTimesPerWeek',
      desc: 'A message with a single parameter',
      args: [interval],
    );
  }

  /// `{n}+ times per week`
  String MoreThanNTimesPerWeek(Object n) {
    return Intl.message(
      '$n+ times per week',
      name: 'MoreThanNTimesPerWeek',
      desc: '',
      args: [n],
    );
  }

  /// `How many cups of water do you drink per day`
  String get HowManyCupsOfWaterDoYouDrinkPerDay {
    return Intl.message(
      'How many cups of water do you drink per day',
      name: 'HowManyCupsOfWaterDoYouDrinkPerDay',
      desc: '',
      args: [],
    );
  }

  /// `1 per day or less`
  String get OnePerDayOrLess {
    return Intl.message(
      '1 per day or less',
      name: 'OnePerDayOrLess',
      desc: '',
      args: [],
    );
  }

  /// `{interval} per day`
  String NPerDay(String interval) {
    return Intl.message(
      '$interval per day',
      name: 'NPerDay',
      desc: 'A message with a single parameter',
      args: [interval],
    );
  }

  /// `{n}+ per day`
  String MoreThanNPerDay(Object n) {
    return Intl.message(
      '$n+ per day',
      name: 'MoreThanNPerDay',
      desc: '',
      args: [n],
    );
  }

  /// `How often do you eat fast-food or eat out?`
  String get HowOftenDoYouEatFastFoodOrEatOut {
    return Intl.message(
      'How often do you eat fast-food or eat out?',
      name: 'HowOftenDoYouEatFastFoodOrEatOut',
      desc: '',
      args: [],
    );
  }

  /// `1 time per month`
  String get OnePerMonth {
    return Intl.message(
      '1 time per month',
      name: 'OnePerMonth',
      desc: '',
      args: [],
    );
  }

  /// `{interval} times per month`
  String NPerMonth(String interval) {
    return Intl.message(
      '$interval times per month',
      name: 'NPerMonth',
      desc: 'A message with a single parameter',
      args: [interval],
    );
  }

  /// `How often do you drink alcohol?`
  String get HowOftenDoYouDrinkAlcohol {
    return Intl.message(
      'How often do you drink alcohol?',
      name: 'HowOftenDoYouDrinkAlcohol',
      desc: '',
      args: [],
    );
  }

  /// `Add a meal`
  String get AddAMeal {
    return Intl.message(
      'Add a meal',
      name: 'AddAMeal',
      desc: '',
      args: [],
    );
  }

  /// `Water`
  String get Water {
    return Intl.message(
      'Water',
      name: 'Water',
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
