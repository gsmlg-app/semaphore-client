import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('cs'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ru'),
    Locale('uk'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Semaphore Mobile'**
  String get appName;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @hide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get hide;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @destinationProject.
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get destinationProject;

  /// No description provided for @destinationSetting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get destinationSetting;

  /// No description provided for @destinationServer.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get destinationServer;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get settingsTitle;

  /// No description provided for @smenuTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get smenuTheme;

  /// No description provided for @titleSelectAppearance.
  ///
  /// In en, this message translates to:
  /// **'Select Appearance'**
  String get titleSelectAppearance;

  /// No description provided for @titleSelectColorTheme.
  ///
  /// In en, this message translates to:
  /// **'Select Accent Color'**
  String get titleSelectColorTheme;

  /// No description provided for @smenuSemaphore.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get smenuSemaphore;

  /// No description provided for @smenuServer.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get smenuServer;

  /// No description provided for @smenuSemaphoreServer.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get smenuSemaphoreServer;

  /// No description provided for @titleSelectServer.
  ///
  /// In en, this message translates to:
  /// **'Select Server'**
  String get titleSelectServer;

  /// No description provided for @addServer.
  ///
  /// In en, this message translates to:
  /// **'Add Server'**
  String get addServer;

  /// No description provided for @serverNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Server Name'**
  String get serverNameLabel;

  /// No description provided for @serverNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a name for the server'**
  String get serverNameHint;

  /// No description provided for @serverUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Server URL'**
  String get serverUrlLabel;

  /// No description provided for @serverUrlHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the URL of the server, must include the /api part, e.g. https://semaphore.example.com/api'**
  String get serverUrlHint;

  /// No description provided for @usernameLabel.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get usernameLabel;

  /// No description provided for @usernameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the username to authenticate with the server'**
  String get usernameHint;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the password to authenticate with the server'**
  String get passwordHint;

  /// No description provided for @buttonDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get buttonDelete;

  /// No description provided for @buttonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get buttonCancel;

  /// No description provided for @buttonSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get buttonSave;

  /// No description provided for @smenuSemaphoreServerProject.
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get smenuSemaphoreServerProject;

  /// No description provided for @noServerActivated.
  ///
  /// In en, this message translates to:
  /// **'[No server is activated]'**
  String get noServerActivated;

  /// No description provided for @accidentallyDeleted.
  ///
  /// In en, this message translates to:
  /// **'Accidentally deleted?'**
  String get accidentallyDeleted;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @autoRefresh.
  ///
  /// In en, this message translates to:
  /// **'Auto Refresh'**
  String get autoRefresh;

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @serverAdded.
  ///
  /// In en, this message translates to:
  /// **'Server added'**
  String get serverAdded;

  /// No description provided for @renameServer.
  ///
  /// In en, this message translates to:
  /// **'Rename Server'**
  String get renameServer;

  /// No description provided for @serverRenamed.
  ///
  /// In en, this message translates to:
  /// **'Server renamed to {serverName}'**
  String serverRenamed(String serverName);

  /// No description provided for @clickToSelect.
  ///
  /// In en, this message translates to:
  /// **'[Click to Select]'**
  String get clickToSelect;

  /// No description provided for @titleSelectProject.
  ///
  /// In en, this message translates to:
  /// **'Select Project'**
  String get titleSelectProject;

  /// No description provided for @addProject.
  ///
  /// In en, this message translates to:
  /// **'Add Project'**
  String get addProject;

  /// No description provided for @projectNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Project Name'**
  String get projectNameLabel;

  /// No description provided for @projectNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a name for the project'**
  String get projectNameHint;

  /// No description provided for @projectAlertLabel.
  ///
  /// In en, this message translates to:
  /// **'Allow alerts for this project'**
  String get projectAlertLabel;

  /// No description provided for @alertChatLabel.
  ///
  /// In en, this message translates to:
  /// **'Telegram Chat ID (Optional)'**
  String get alertChatLabel;

  /// No description provided for @maxParallelTasksLabel.
  ///
  /// In en, this message translates to:
  /// **'Max number of parallel tasks (Optional)'**
  String get maxParallelTasksLabel;

  /// No description provided for @maxParallelTasksHint.
  ///
  /// In en, this message translates to:
  /// **'Should be 0 or greater, 0 - unlimited.'**
  String get maxParallelTasksHint;

  /// No description provided for @projectPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get projectPageTitle;

  /// No description provided for @titleHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get titleHistory;

  /// No description provided for @titleActivity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get titleActivity;

  /// No description provided for @titleTemplate.
  ///
  /// In en, this message translates to:
  /// **'Template'**
  String get titleTemplate;

  /// No description provided for @titleSchedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get titleSchedule;

  /// No description provided for @titleInventory.
  ///
  /// In en, this message translates to:
  /// **'Inventory'**
  String get titleInventory;

  /// No description provided for @titleVariable.
  ///
  /// In en, this message translates to:
  /// **'Variable Group'**
  String get titleVariable;

  /// No description provided for @titleKeyStore.
  ///
  /// In en, this message translates to:
  /// **'Key Store'**
  String get titleKeyStore;

  /// No description provided for @titleRepository.
  ///
  /// In en, this message translates to:
  /// **'Repository'**
  String get titleRepository;

  /// No description provided for @titleIntegration.
  ///
  /// In en, this message translates to:
  /// **'Integration'**
  String get titleIntegration;

  /// No description provided for @titleTeam.
  ///
  /// In en, this message translates to:
  /// **'Team'**
  String get titleTeam;

  /// No description provided for @titleTask.
  ///
  /// In en, this message translates to:
  /// **'Task'**
  String get titleTask;

  /// No description provided for @rerunTask.
  ///
  /// In en, this message translates to:
  /// **'Rerun Task'**
  String get rerunTask;

  /// No description provided for @runTask.
  ///
  /// In en, this message translates to:
  /// **'Run Task'**
  String get runTask;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @statusSuccess.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get statusSuccess;

  /// No description provided for @statusFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get statusFailed;

  /// No description provided for @statusRunning.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get statusRunning;

  /// No description provided for @statusWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get statusWaiting;

  /// No description provided for @statusStopped.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get statusStopped;

  /// No description provided for @statusUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get statusUnknown;

  /// No description provided for @taskOutput.
  ///
  /// In en, this message translates to:
  /// **'Task Output'**
  String get taskOutput;

  /// No description provided for @taskNoOutput.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get taskNoOutput;

  /// No description provided for @taskLabelMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get taskLabelMessage;

  /// No description provided for @taskLabelDryRun.
  ///
  /// In en, this message translates to:
  /// **'Dry Run'**
  String get taskLabelDryRun;

  /// No description provided for @taskLabelDebug.
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get taskLabelDebug;

  /// No description provided for @taskLabelDiff.
  ///
  /// In en, this message translates to:
  /// **'Diff'**
  String get taskLabelDiff;

  /// No description provided for @taskCreated.
  ///
  /// In en, this message translates to:
  /// **'Task #{taskId} created!'**
  String taskCreated(int taskId);

  /// No description provided for @showTaskOutput.
  ///
  /// In en, this message translates to:
  /// **'Show Task Output'**
  String get showTaskOutput;

  /// No description provided for @taskStartedAt.
  ///
  /// In en, this message translates to:
  /// **'Started at {time}'**
  String taskStartedAt(String time);

  /// No description provided for @taskRunning.
  ///
  /// In en, this message translates to:
  /// **'Running...'**
  String get taskRunning;

  /// No description provided for @taskDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration: {duration}'**
  String taskDuration(String duration);

  /// No description provided for @byUser.
  ///
  /// In en, this message translates to:
  /// **'by {user}'**
  String byUser(String user);

  /// No description provided for @inventoryNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get inventoryNameLabel;

  /// No description provided for @inventorySshKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'User Credentials'**
  String get inventorySshKeyLabel;

  /// No description provided for @inventoryBecomeKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Sudo Credentials (Optional)'**
  String get inventoryBecomeKeyLabel;

  /// No description provided for @inventoryTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get inventoryTypeLabel;

  /// No description provided for @inventoryInventoryFileLabel.
  ///
  /// In en, this message translates to:
  /// **'Path to Inventory file'**
  String get inventoryInventoryFileLabel;

  /// No description provided for @inventoryInventoryTextLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter inventory'**
  String get inventoryInventoryTextLabel;

  /// No description provided for @inventoryInventoryTextHint.
  ///
  /// In en, this message translates to:
  /// **'Static inventory example:'**
  String get inventoryInventoryTextHint;

  /// No description provided for @inventoryInventoryTextYamlHint.
  ///
  /// In en, this message translates to:
  /// **'Static YAML inventory example:'**
  String get inventoryInventoryTextYamlHint;

  /// No description provided for @inventoryRepositoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Repository (Optional)'**
  String get inventoryRepositoryLabel;

  /// No description provided for @inventoryCreated.
  ///
  /// In en, this message translates to:
  /// **'Inventory created'**
  String get inventoryCreated;

  /// No description provided for @inventoryUpdated.
  ///
  /// In en, this message translates to:
  /// **'Inventory updated'**
  String get inventoryUpdated;

  /// No description provided for @inventoryDeleted.
  ///
  /// In en, this message translates to:
  /// **'Inventory deleted'**
  String get inventoryDeleted;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'cs',
        'de',
        'en',
        'es',
        'fr',
        'it',
        'ja',
        'ko',
        'ru',
        'uk',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'cs':
      return AppLocalizationsCs();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'ru':
      return AppLocalizationsRu();
    case 'uk':
      return AppLocalizationsUk();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
