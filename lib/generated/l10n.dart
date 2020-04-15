// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get pageHomeListTitle {
    return Intl.message(
      'Some localized strings:',
      name: 'pageHomeListTitle',
      desc: '',
      args: [],
    );
  }

  String pageHomeSamplePlaceholder(Object name) {
    return Intl.message(
      'Welcome $name',
      name: 'pageHomeSamplePlaceholder',
      desc: '',
      args: [name],
    );
  }

  String pageHomeSamplePlaceholdersOrdered(Object lastName, Object firstName) {
    return Intl.message(
      'My name is $lastName, $firstName $lastName',
      name: 'pageHomeSamplePlaceholdersOrdered',
      desc: '',
      args: [lastName, firstName],
    );
  }

  String pageHomeSamplePlural(num howMany) {
    return Intl.plural(
      howMany,
      one: 'You have 1 message',
      other: 'You have $howMany messages',
      name: 'pageHomeSamplePlural',
      desc: '',
      args: [howMany],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'), Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}