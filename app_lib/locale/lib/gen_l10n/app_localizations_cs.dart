// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appName => 'Spouštěč Ansible Semaphore';

  @override
  String get show => 'Zobrazit';

  @override
  String get hide => 'Skrýt';

  @override
  String get exit => 'Ukončit';

  @override
  String get destinationProject => 'Projekt';

  @override
  String get destinationSetting => 'Nastavení';

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get smenuTheme => 'Motiv';

  @override
  String get titleSelectAppearance => 'Vyberte vzhled';

  @override
  String get titleSelectColorTheme => 'Vyberte barevnou paletu';

  @override
  String get smenuSemaphore => 'Ansible Semaphore';

  @override
  String get smenuSemaphoreServer => 'Server';

  @override
  String get titleSelectServer => 'Vyberte server';

  @override
  String get addServer => 'Přidat server';

  @override
  String get serverNameLabel => 'Název serveru';

  @override
  String get serverNameHint => 'Zadejte název pro server';

  @override
  String get serverUrlLabel => 'URL serveru';

  @override
  String get serverUrlHint =>
      'Zadejte URL serveru, musí obsahovat část /api, například https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Uživatelské jméno';

  @override
  String get usernameHint => 'Zadejte uživatelské jméno pro ověření na serveru';

  @override
  String get passwordLabel => 'Heslo';

  @override
  String get passwordHint => 'Zadejte heslo pro ověření na serveru';

  @override
  String get buttonDelete => 'Smazat';

  @override
  String get buttonCancel => 'Zrušit';

  @override
  String get buttonSave => 'Uložit';

  @override
  String get smenuSemaphoreServerProject => 'Projekt';

  @override
  String get noServerActivated => '[Žádný server není aktivován]';

  @override
  String get accidentallyDeleted => 'Náhodně smazáno?';

  @override
  String get undo => 'Zpět';

  @override
  String get delete => 'Smazat';

  @override
  String get refresh => 'Obnovit';

  @override
  String get autoRefresh => 'Automatická obnova';

  @override
  String get rename => 'Přejmenovat';

  @override
  String get serverAdded => 'Server přidán';

  @override
  String get renameServer => 'Přejmenovat server';

  @override
  String serverRenamed(String serverName) {
    return 'Server přejmenován na $serverName';
  }

  @override
  String get clickToSelect => '[Klikněte pro výběr]';

  @override
  String get titleSelectProject => 'Vyberte projekt';

  @override
  String get addProject => 'Přidat projekt';

  @override
  String get projectNameLabel => 'Název projektu';

  @override
  String get projectNameHint => 'Zadejte název pro projekt';

  @override
  String get projectAlertLabel => 'Povolit upozornění pro tento projekt';

  @override
  String get alertChatLabel => 'Telegram Chat ID (volitelné)';

  @override
  String get maxParallelTasksLabel =>
      'Maximální počet paralelních úloh (volitelné)';

  @override
  String get maxParallelTasksHint => 'Musí být 0 nebo větší, 0 - neomezeno.';

  @override
  String get projectPageTitle => 'Projekt';

  @override
  String get titleHistory => 'Historie';

  @override
  String get titleActivity => 'Aktivita';

  @override
  String get titleTemplate => 'Šablona';

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
  String get titleTask => 'Úloha';

  @override
  String get rerunTask => 'Znovu spustit úlohu';

  @override
  String get runTask => 'Spustit úlohu';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Upravit';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Úspěch';

  @override
  String get statusFailed => 'Chyba';

  @override
  String get statusRunning => 'Běží';

  @override
  String get statusWaiting => 'Čeká';

  @override
  String get statusStopped => 'Zastaveno';

  @override
  String get statusUnknown => 'Neznámý';

  @override
  String get taskOutput => 'Výstup úlohy';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'Zpráva';

  @override
  String get taskLabelDryRun => 'Suchý běh';

  @override
  String get taskLabelDebug => 'Ladění';

  @override
  String get taskLabelDiff => 'Rozdíl';

  @override
  String taskCreated(int taskId) {
    return 'Úloha #$taskId vytvořena!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Spuštěno v $time';
  }

  @override
  String get taskRunning => 'Běží...';

  @override
  String taskDuration(String duration) {
    return 'Trvání: $duration';
  }

  @override
  String byUser(String user) {
    return 'od $user';
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
