import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:next_photo/src/common/presentation/localization/generated/l10n.dart';

/// The language locales that are supported by the app.
List<Locale> supportedLocales = [
  const Locale('en', 'US'),
];

/// The list of localizations delegates for the app.
final List<LocalizationsDelegate> localizationDelegates = [
  S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
  DefaultCupertinoLocalizations.delegate,
];
