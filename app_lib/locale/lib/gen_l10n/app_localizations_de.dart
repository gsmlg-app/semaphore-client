// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore Runner';

  @override
  String get show => 'Anzeigen';

  @override
  String get hide => 'Ausblenden';

  @override
  String get exit => 'Beenden';

  @override
  String get destinationProject => 'Projekt';

  @override
  String get destinationSetting => 'Einstellung';

  @override
  String get destinationServer => 'Server';

  @override
  String get settingsTitle => 'Einstellung';

  @override
  String get smenuTheme => 'Thema';

  @override
  String get titleSelectAppearance => 'Erscheinungsbild auswählen';

  @override
  String get titleSelectColorTheme => 'Akzentfarbe auswählen';

  @override
  String get smenuSemaphore => 'Server';

  @override
  String get smenuServer => 'Server';

  @override
  String get smenuSemaphoreServer => 'Server';

  @override
  String get titleSelectServer => 'Server auswählen';

  @override
  String get addServer => 'Server hinzufügen';

  @override
  String get serverNameLabel => 'Servername';

  @override
  String get serverNameHint => 'Geben Sie einen Namen für den Server ein';

  @override
  String get serverUrlLabel => 'Server-URL';

  @override
  String get serverUrlHint =>
      'Geben Sie die URL des Servers ein, muss den /api-Teil enthalten, z. B. https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Benutzername';

  @override
  String get usernameHint =>
      'Geben Sie den Benutzernamen ein, mit dem Sie sich beim Server authentifizieren';

  @override
  String get passwordLabel => 'Passwort';

  @override
  String get passwordHint =>
      'Geben Sie das Passwort ein, mit dem Sie sich beim Server authentifizieren';

  @override
  String get buttonDelete => 'Löschen';

  @override
  String get buttonCancel => 'Abbrechen';

  @override
  String get buttonSave => 'Speichern';

  @override
  String get smenuSemaphoreServerProject => 'Projekt';

  @override
  String get noServerActivated => '[Kein Server ist aktiviert]';

  @override
  String get accidentallyDeleted => 'Unbeabsichtigt gelöscht?';

  @override
  String get undo => 'Rückgängig machen';

  @override
  String get delete => 'Löschen';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get autoRefresh => 'Automatisch aktualisieren';

  @override
  String get rename => 'Umbenennen';

  @override
  String get serverAdded => 'Server hinzugefügt';

  @override
  String get renameServer => 'Server umbenennen';

  @override
  String serverRenamed(String serverName) {
    return 'Server umbenannt in $serverName';
  }

  @override
  String get clickToSelect => '[Zum Auswählen klicken]';

  @override
  String get titleSelectProject => 'Projekt auswählen';

  @override
  String get addProject => 'Projekt hinzufügen';

  @override
  String get projectNameLabel => 'Projektname';

  @override
  String get projectNameHint => 'Geben Sie einen Namen für das Projekt ein';

  @override
  String get projectAlertLabel =>
      'Benachrichtigungen für dieses Projekt zulassen';

  @override
  String get alertChatLabel => 'Telegram Chat ID (Optional)';

  @override
  String get maxParallelTasksLabel =>
      'Maximale Anzahl paralleler Aufgaben (Optional)';

  @override
  String get maxParallelTasksHint =>
      'Sollte 0 oder größer sein, 0 - unbegrenzt.';

  @override
  String get projectPageTitle => 'Projekt';

  @override
  String get titleHistory => 'Verlauf';

  @override
  String get titleActivity => 'Aktivität';

  @override
  String get titleTemplate => 'Vorlage';

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
  String get titleTask => 'Aufgabe';

  @override
  String get rerunTask => 'Aufgabe erneut ausführen';

  @override
  String get runTask => 'Aufgabe ausführen';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Erfolg';

  @override
  String get statusFailed => 'Fehler';

  @override
  String get statusRunning => 'Läuft';

  @override
  String get statusWaiting => 'Wartend';

  @override
  String get statusStopped => 'Gestoppt';

  @override
  String get statusUnknown => 'Unbekannt';

  @override
  String get taskOutput => 'Aufgaben-Ausgabe';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'Nachricht';

  @override
  String get taskLabelDryRun => 'Testlauf';

  @override
  String get taskLabelDebug => 'Debug';

  @override
  String get taskLabelDiff => 'Differenz';

  @override
  String taskCreated(int taskId) {
    return 'Aufgabe #$taskId erstellt!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Gestartet um $time';
  }

  @override
  String get taskRunning => 'Läuft...';

  @override
  String taskDuration(String duration) {
    return 'Dauer: $duration';
  }

  @override
  String byUser(String user) {
    return 'von $user';
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
