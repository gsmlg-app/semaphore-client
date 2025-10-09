import 'package:app_locale/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart' show BuildContext;

extension Localization on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
