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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Coinmerce`
  String get appBarTitle {
    return Intl.message(
      'Coinmerce',
      name: 'appBarTitle',
      desc: 'The title shown in the app bar',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: 'Label for the description section',
      args: [],
    );
  }

  /// `No results found`
  String get emptyResult {
    return Intl.message(
      'No results found',
      name: 'emptyResult',
      desc: 'Message shown when no search results are found',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: 'Label for search functionality',
      args: [],
    );
  }

  /// `An error occurred`
  String get error {
    return Intl.message(
      'An error occurred',
      name: 'error',
      desc: 'Generic error message',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: 'Label for about section',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Label for language settings',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: 'Label for dark mode toggle',
      args: [],
    );
  }

  /// `Coinmerce is your trusted companion in the world of cryptocurrency. We provide real-time market data, price tracking, and portfolio management tools to help you make informed investment decisions. Our user-friendly interface makes it easy to monitor your favorite cryptocurrencies and stay updated with market trends. Whether you're a seasoned trader or just starting your crypto journey, Coinmerce is here to support your financial goals.`
  String get description_text {
    return Intl.message(
      'Coinmerce is your trusted companion in the world of cryptocurrency. We provide real-time market data, price tracking, and portfolio management tools to help you make informed investment decisions. Our user-friendly interface makes it easy to monitor your favorite cryptocurrencies and stay updated with market trends. Whether you\'re a seasoned trader or just starting your crypto journey, Coinmerce is here to support your financial goals.',
      name: 'description_text',
      desc: 'The main description text shown in the about section',
      args: [],
    );
  }

  /// `Market Data`
  String get marketData {
    return Intl.message(
      'Market Data',
      name: 'marketData',
      desc: 'Title for the market data section',
      args: [],
    );
  }

  /// `Price Statistics`
  String get priceStatistics {
    return Intl.message(
      'Price Statistics',
      name: 'priceStatistics',
      desc: 'Title for the price statistics section',
      args: [],
    );
  }

  /// `Additional Info`
  String get additionalInfo {
    return Intl.message(
      'Additional Info',
      name: 'additionalInfo',
      desc: 'Title for the additional info section',
      args: [],
    );
  }

  /// `Market Cap`
  String get marketCap {
    return Intl.message(
      'Market Cap',
      name: 'marketCap',
      desc: 'Label for market capitalization',
      args: [],
    );
  }

  /// `Market Cap Rank`
  String get marketCapRank {
    return Intl.message(
      'Market Cap Rank',
      name: 'marketCapRank',
      desc: 'Label for market cap rank',
      args: [],
    );
  }

  /// `24h Volume`
  String get volume24h {
    return Intl.message(
      '24h Volume',
      name: 'volume24h',
      desc: 'Label for 24-hour volume',
      args: [],
    );
  }

  /// `Circulating Supply`
  String get circulatingSupply {
    return Intl.message(
      'Circulating Supply',
      name: 'circulatingSupply',
      desc: 'Label for circulating supply',
      args: [],
    );
  }

  /// `24h High`
  String get high24h {
    return Intl.message(
      '24h High',
      name: 'high24h',
      desc: 'Label for 24-hour high price',
      args: [],
    );
  }

  /// `24h Low`
  String get low24h {
    return Intl.message(
      '24h Low',
      name: 'low24h',
      desc: 'Label for 24-hour low price',
      args: [],
    );
  }

  /// `All Time High`
  String get allTimeHigh {
    return Intl.message(
      'All Time High',
      name: 'allTimeHigh',
      desc: 'Label for all-time high price',
      args: [],
    );
  }

  /// `All Time Low`
  String get allTimeLow {
    return Intl.message(
      'All Time Low',
      name: 'allTimeLow',
      desc: 'Label for all-time low price',
      args: [],
    );
  }

  /// `Last Updated`
  String get lastUpdated {
    return Intl.message(
      'Last Updated',
      name: 'lastUpdated',
      desc: 'Label for last update timestamp',
      args: [],
    );
  }

  /// `ROI`
  String get roi {
    return Intl.message(
      'ROI',
      name: 'roi',
      desc: 'Label for return on investment',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'cs'),
      Locale.fromSubtags(languageCode: 'nl'),
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
