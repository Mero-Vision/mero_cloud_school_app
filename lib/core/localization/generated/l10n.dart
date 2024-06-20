import 'package:mero_cloud_school/core/common/exports.dart';
// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:intl/intl.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Label for selecting the app language.',
      args: [],
    );
  }

  /// `Flutter Clean Code Variety`
  String get common_appName {
    return Intl.message(
      'Flutter Clean Code Variety',
      name: 'common_appName',
      desc: 'The name of the app.',
      args: [],
    );
  }

  /// `Something went wrong!`
  String get error_somethingWentWrong {
    return Intl.message(
      'Something went wrong!',
      name: 'error_somethingWentWrong',
      desc: 'Error message when something goes wrong.',
      args: [],
    );
  }

  /// `Server Error!`
  String get error_serverError {
    return Intl.message(
      'Server Error!',
      name: 'error_serverError',
      desc: 'Error message when the server returns an error.',
      args: [],
    );
  }

  /// `Connection Error!`
  String get error_connectionError {
    return Intl.message(
      'Connection Error!',
      name: 'error_connectionError',
      desc: 'Error message when there is a connection error.',
      args: [],
    );
  }

  /// `User not found!`
  String get error_noUser {
    return Intl.message(
      'User not found!',
      name: 'error_noUser',
      desc: 'Error message when the user is not found.',
      args: [],
    );
  }

  /// `Flutter Clean Code Variety`
  String get splash_title {
    return Intl.message(
      'Flutter Clean Code Variety',
      name: 'splash_title',
      desc: 'The title of the splash screen.',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
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
