// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore Runner';

  @override
  String get show => 'Afficher';

  @override
  String get hide => 'Masquer';

  @override
  String get exit => 'Quitter';

  @override
  String get destinationProject => 'Projet';

  @override
  String get destinationSetting => 'Paramètre';

  @override
  String get settingsTitle => 'Paramètre';

  @override
  String get smenuTheme => 'Thème';

  @override
  String get titleSelectAppearance => 'Sélectionner l\'apparence';

  @override
  String get titleSelectColorTheme => 'Sélectionner la couleur d\'accentuation';

  @override
  String get smenuSemaphore => 'Ansible Semaphore';

  @override
  String get smenuSemaphoreServer => 'Serveur';

  @override
  String get titleSelectServer => 'Sélectionner le serveur';

  @override
  String get addServer => 'Ajouter un serveur';

  @override
  String get serverNameLabel => 'Nom du serveur';

  @override
  String get serverNameHint => 'Entrez un nom pour le serveur';

  @override
  String get serverUrlLabel => 'URL du serveur';

  @override
  String get serverUrlHint =>
      'Entrez l\'URL du serveur, doit inclure la partie /api, par exemple https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Nom d\'utilisateur';

  @override
  String get usernameHint =>
      'Entrez le nom d\'utilisateur pour vous authentifier auprès du serveur';

  @override
  String get passwordLabel => 'Mot de passe';

  @override
  String get passwordHint =>
      'Entrez le mot de passe pour vous authentifier auprès du serveur';

  @override
  String get buttonDelete => 'Supprimer';

  @override
  String get buttonCancel => 'Annuler';

  @override
  String get buttonSave => 'Enregistrer';

  @override
  String get smenuSemaphoreServerProject => 'Projet';

  @override
  String get noServerActivated => '[Aucun serveur n\'est activé]';

  @override
  String get accidentallyDeleted => 'Supprimé par erreur ?';

  @override
  String get undo => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get refresh => 'Rafraîchir';

  @override
  String get autoRefresh => 'Rafraîchissement automatique';

  @override
  String get rename => 'Renommer';

  @override
  String get serverAdded => 'Serveur ajouté';

  @override
  String get renameServer => 'Renommer le serveur';

  @override
  String serverRenamed(String serverName) {
    return 'Serveur renommé en $serverName';
  }

  @override
  String get clickToSelect => '[Cliquez pour sélectionner]';

  @override
  String get titleSelectProject => 'Sélectionner le projet';

  @override
  String get addProject => 'Ajouter un projet';

  @override
  String get projectNameLabel => 'Nom du projet';

  @override
  String get projectNameHint => 'Entrez un nom pour le projet';

  @override
  String get projectAlertLabel => 'Autoriser les alertes pour ce projet';

  @override
  String get alertChatLabel => 'Identifiant du chat Telegram (facultatif)';

  @override
  String get maxParallelTasksLabel =>
      'Nombre maximal de tâches parallèles (facultatif)';

  @override
  String get maxParallelTasksHint => 'Doit être 0 ou supérieur, 0 - illimité.';

  @override
  String get projectPageTitle => 'Projet';

  @override
  String get titleHistory => 'Historique';

  @override
  String get titleActivity => 'Activité';

  @override
  String get titleTemplate => 'Modèle';

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
  String get titleTask => 'Tâche';

  @override
  String get rerunTask => 'Relancer la tâche';

  @override
  String get runTask => 'Exécuter la tâche';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Modifier';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Réussi';

  @override
  String get statusFailed => 'Échoué';

  @override
  String get statusRunning => 'En cours d\'exécution';

  @override
  String get statusWaiting => 'En attente';

  @override
  String get statusStopped => 'Arrêté';

  @override
  String get statusUnknown => 'Inconnu';

  @override
  String get taskOutput => 'Sortie de la tâche';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'Message';

  @override
  String get taskLabelDryRun => 'Exécution à blanc';

  @override
  String get taskLabelDebug => 'Débogage';

  @override
  String get taskLabelDiff => 'Différentiel';

  @override
  String taskCreated(int taskId) {
    return 'Tâche #$taskId créée !';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Démarré à $time';
  }

  @override
  String get taskRunning => 'En cours d\'exécution...';

  @override
  String taskDuration(String duration) {
    return 'Durée : $duration';
  }

  @override
  String byUser(String user) {
    return 'par $user';
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
