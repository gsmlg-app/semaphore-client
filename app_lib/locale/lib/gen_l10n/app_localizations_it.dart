// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Esecutore Semaforo Ansible';

  @override
  String get show => 'Mostra';

  @override
  String get hide => 'Nascondi';

  @override
  String get exit => 'Esci';

  @override
  String get destinationProject => 'Progetto';

  @override
  String get destinationSetting => 'Impostazione';

  @override
  String get settingsTitle => 'Impostazione';

  @override
  String get smenuTheme => 'Tema';

  @override
  String get titleSelectAppearance => 'Seleziona l\'aspetto';

  @override
  String get titleSelectColorTheme => 'Seleziona il colore di accento';

  @override
  String get smenuSemaphore => 'Semaforo Ansible';

  @override
  String get smenuSemaphoreServer => 'Server';

  @override
  String get titleSelectServer => 'Seleziona il server';

  @override
  String get addServer => 'Aggiungi server';

  @override
  String get serverNameLabel => 'Nome server';

  @override
  String get serverNameHint => 'Inserisci un nome per il server';

  @override
  String get serverUrlLabel => 'URL del server';

  @override
  String get serverUrlHint =>
      'Inserisci l\'URL del server, deve includere la parte /api, ad esempio https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Nome utente';

  @override
  String get usernameHint =>
      'Inserisci il nome utente per l\'autenticazione con il server';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint =>
      'Inserisci la password per l\'autenticazione con il server';

  @override
  String get buttonDelete => 'Elimina';

  @override
  String get buttonCancel => 'Annulla';

  @override
  String get buttonSave => 'Salva';

  @override
  String get smenuSemaphoreServerProject => 'Progetto';

  @override
  String get noServerActivated => '[Nessun server è attivato]';

  @override
  String get accidentallyDeleted => 'Eliminato accidentalmente?';

  @override
  String get undo => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get autoRefresh => 'Aggiornamento automatico';

  @override
  String get rename => 'Rinomina';

  @override
  String get serverAdded => 'Server aggiunto';

  @override
  String get renameServer => 'Rinomina server';

  @override
  String serverRenamed(String serverName) {
    return 'Server rinominato in $serverName';
  }

  @override
  String get clickToSelect => '[Clicca per selezionare]';

  @override
  String get titleSelectProject => 'Seleziona il progetto';

  @override
  String get addProject => 'Aggiungi progetto';

  @override
  String get projectNameLabel => 'Nome progetto';

  @override
  String get projectNameHint => 'Inserisci un nome per il progetto';

  @override
  String get projectAlertLabel => 'Consenti avvisi per questo progetto';

  @override
  String get alertChatLabel => 'ID chat Telegram (opzionale)';

  @override
  String get maxParallelTasksLabel =>
      'Numero massimo di attività parallele (opzionale)';

  @override
  String get maxParallelTasksHint =>
      'Dovrebbe essere 0 o maggiore, 0 - illimitato.';

  @override
  String get projectPageTitle => 'Progetto';

  @override
  String get titleHistory => 'Cronologia';

  @override
  String get titleActivity => 'Attività';

  @override
  String get titleTemplate => 'Modello';

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
  String get titleTask => 'Attività';

  @override
  String get rerunTask => 'Ripeti l\'attività';

  @override
  String get runTask => 'Esegui l\'attività';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Modifica';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Riuscito';

  @override
  String get statusFailed => 'Fallito';

  @override
  String get statusRunning => 'In esecuzione';

  @override
  String get statusWaiting => 'In attesa';

  @override
  String get statusStopped => 'Arresto';

  @override
  String get statusUnknown => 'Sconosciuto';

  @override
  String get taskOutput => 'Output dell\'attività';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'Messaggio';

  @override
  String get taskLabelDryRun => 'Esecuzione a secco';

  @override
  String get taskLabelDebug => 'Debug';

  @override
  String get taskLabelDiff => 'Differenza';

  @override
  String taskCreated(int taskId) {
    return 'Attività #$taskId creata!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Avviato alle $time';
  }

  @override
  String get taskRunning => 'In esecuzione...';

  @override
  String taskDuration(String duration) {
    return 'Durata: $duration';
  }

  @override
  String byUser(String user) {
    return 'da $user';
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
