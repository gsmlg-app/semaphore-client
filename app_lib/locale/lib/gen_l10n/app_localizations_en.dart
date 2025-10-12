// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Semaphore Mobile';

  @override
  String get show => 'Show';

  @override
  String get hide => 'Hide';

  @override
  String get exit => 'Exit';

  @override
  String get destinationProject => 'Project';

  @override
  String get destinationSetting => 'Setting';

  @override
  String get destinationServer => 'Server';

  @override
  String get settingsTitle => 'Setting';

  @override
  String get smenuTheme => 'Theme';

  @override
  String get titleSelectAppearance => 'Select Appearance';

  @override
  String get titleSelectColorTheme => 'Select Accent Color';

  @override
  String get smenuSemaphore => 'Server';

  @override
  String get smenuServer => 'Server';

  @override
  String get smenuSemaphoreServer => 'Server';

  @override
  String get titleSelectServer => 'Select Server';

  @override
  String get addServer => 'Add Server';

  @override
  String get serverNameLabel => 'Server Name';

  @override
  String get serverNameHint => 'Enter a name for the server';

  @override
  String get serverUrlLabel => 'Server URL';

  @override
  String get serverUrlHint =>
      'Enter the URL of the server, must include the /api part, e.g. https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Username';

  @override
  String get usernameHint =>
      'Enter the username to authenticate with the server';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint =>
      'Enter the password to authenticate with the server';

  @override
  String get buttonDelete => 'Delete';

  @override
  String get buttonCancel => 'Cancel';

  @override
  String get buttonSave => 'Save';

  @override
  String get smenuSemaphoreServerProject => 'Project';

  @override
  String get noServerActivated => '[No server is activated]';

  @override
  String get accidentallyDeleted => 'Accidentally deleted?';

  @override
  String get undo => 'Undo';

  @override
  String get delete => 'Delete';

  @override
  String get refresh => 'Refresh';

  @override
  String get autoRefresh => 'Auto Refresh';

  @override
  String get rename => 'Rename';

  @override
  String get serverAdded => 'Server added';

  @override
  String get renameServer => 'Rename Server';

  @override
  String serverRenamed(String serverName) {
    return 'Server renamed to $serverName';
  }

  @override
  String get clickToSelect => '[Click to Select]';

  @override
  String get titleSelectProject => 'Select Project';

  @override
  String get addProject => 'Add Project';

  @override
  String get projectNameLabel => 'Project Name';

  @override
  String get projectNameHint => 'Enter a name for the project';

  @override
  String get projectAlertLabel => 'Allow alerts for this project';

  @override
  String get alertChatLabel => 'Telegram Chat ID (Optional)';

  @override
  String get maxParallelTasksLabel => 'Max number of parallel tasks (Optional)';

  @override
  String get maxParallelTasksHint => 'Should be 0 or greater, 0 - unlimited.';

  @override
  String get projectPageTitle => 'Project';

  @override
  String get titleHistory => 'History';

  @override
  String get titleActivity => 'Activity';

  @override
  String get titleTemplate => 'Template';

  @override
  String get titleSchedule => 'Schedule';

  @override
  String get titleInventory => 'Inventory';

  @override
  String get titleVariable => 'Variable Group';

  @override
  String get titleKeyStore => 'Key Store';

  @override
  String get titleRepository => 'Repository';

  @override
  String get titleIntegration => 'Integration';

  @override
  String get titleTeam => 'Team';

  @override
  String get titleTask => 'Task';

  @override
  String get rerunTask => 'Rerun Task';

  @override
  String get runTask => 'Run Task';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Edit';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Success';

  @override
  String get statusFailed => 'Failed';

  @override
  String get statusRunning => 'Running';

  @override
  String get statusWaiting => 'Waiting';

  @override
  String get statusStopped => 'Stopped';

  @override
  String get statusUnknown => 'Unknown';

  @override
  String get taskOutput => 'Task Output';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'Message';

  @override
  String get taskLabelDryRun => 'Dry Run';

  @override
  String get taskLabelDebug => 'Debug';

  @override
  String get taskLabelDiff => 'Diff';

  @override
  String taskCreated(int taskId) {
    return 'Task #$taskId created!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Started at $time';
  }

  @override
  String get taskRunning => 'Running...';

  @override
  String taskDuration(String duration) {
    return 'Duration: $duration';
  }

  @override
  String byUser(String user) {
    return 'by $user';
  }

  @override
  String get inventoryNameLabel => 'Name';

  @override
  String get inventorySshKeyLabel => 'User Credentials';

  @override
  String get inventoryBecomeKeyLabel => 'Sudo Credentials (Optional)';

  @override
  String get inventoryTypeLabel => 'Type';

  @override
  String get inventoryInventoryFileLabel => 'Path to Inventory file';

  @override
  String get inventoryInventoryTextLabel => 'Enter inventory';

  @override
  String get inventoryInventoryTextHint => 'Static inventory example:';

  @override
  String get inventoryInventoryTextYamlHint => 'Static YAML inventory example:';

  @override
  String get inventoryRepositoryLabel => 'Repository (Optional)';

  @override
  String get inventoryCreated => 'Inventory created';

  @override
  String get inventoryUpdated => 'Inventory updated';

  @override
  String get inventoryDeleted => 'Inventory deleted';
}
