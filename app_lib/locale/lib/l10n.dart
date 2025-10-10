import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:adaptive/l10n/gen_l10n/adaptive_localizations.dart';
import 'package:app_feedback/l10n/gen_l10n/feedback_localizations.dart';

import 'gen_l10n/semaphore_localizations.dart';

class L10n {
  static List<LocalizationsDelegate> localizationsDelegates = [
    SemaphoreLocalizations.delegate,
    AdaptiveLocalizations.delegate,
    FeedbackLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static List<Locale> supportedLocales = [
    const Locale('en'), // English
    const Locale('es'), // Spanish
    const Locale('fr'), // French
    const Locale('de'), // German
    const Locale('it'), // Italian
    const Locale('ru'), // Russian
    const Locale('uk'), // Ukrainian
    const Locale('ko'), // Korean
    const Locale('ja'), // Japanese
    const Locale('cs'), // Czech
    const Locale('ar'), // Arabic
    const Locale.fromSubtags(languageCode: 'zh'), // generic Chinese 'zh'
    const Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hans'), // generic simplified Chinese 'zh_Hans'
    const Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hant'), // generic traditional Chinese 'zh_Hant'
    // const Locale.fromSubtags(
    //     languageCode: 'zh',
    //     scriptCode: 'Hans',
    //     countryCode: 'CN'), // 'zh_Hans_CN'
    // const Locale.fromSubtags(
    //     languageCode: 'zh',
    //     scriptCode: 'Hant',
    //     countryCode: 'TW'), // 'zh_Hant_TW'
    // const Locale.fromSubtags(
    //     languageCode: 'zh',
    //     scriptCode: 'Hant',
    //     countryCode: 'HK'), // 'zh_Hant_HK'
  ];
}
