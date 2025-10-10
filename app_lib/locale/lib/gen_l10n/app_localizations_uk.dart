// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'Виконавець Ansible Semaphore';

  @override
  String get show => 'Показати';

  @override
  String get hide => 'Приховати';

  @override
  String get exit => 'Вийти';

  @override
  String get destinationProject => 'Проект';

  @override
  String get destinationSetting => 'Налаштування';

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get smenuTheme => 'Тема';

  @override
  String get titleSelectAppearance => 'Виберіть зовнішній вигляд';

  @override
  String get titleSelectColorTheme => 'Виберіть колір акценту';

  @override
  String get smenuSemaphore => 'Ansible Semaphore';

  @override
  String get smenuSemaphoreServer => 'Сервер';

  @override
  String get titleSelectServer => 'Виберіть сервер';

  @override
  String get addServer => 'Додати сервер';

  @override
  String get serverNameLabel => 'Назва сервера';

  @override
  String get serverNameHint => 'Введіть назву для сервера';

  @override
  String get serverUrlLabel => 'URL сервера';

  @override
  String get serverUrlHint =>
      'Введіть URL сервера, включаючи /api частину, наприклад https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Ім\'я користувача';

  @override
  String get usernameHint =>
      'Введіть ім\'я користувача для автентифікації на сервері';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get passwordHint => 'Введіть пароль для автентифікації на сервері';

  @override
  String get buttonDelete => 'Видалити';

  @override
  String get buttonCancel => 'Скасувати';

  @override
  String get buttonSave => 'Зберегти';

  @override
  String get smenuSemaphoreServerProject => 'Проект';

  @override
  String get noServerActivated => '[Немає активних серверів]';

  @override
  String get accidentallyDeleted => 'Випадково видалено?';

  @override
  String get undo => 'Скасувати';

  @override
  String get delete => 'Видалити';

  @override
  String get refresh => 'Оновити';

  @override
  String get autoRefresh => 'Автоматичне оновлення';

  @override
  String get rename => 'Перейменувати';

  @override
  String get serverAdded => 'Сервер додано';

  @override
  String get renameServer => 'Перейменувати сервер';

  @override
  String serverRenamed(String serverName) {
    return 'Сервер перейменовано на $serverName';
  }

  @override
  String get clickToSelect => '[Натисніть, щоб вибрати]';

  @override
  String get titleSelectProject => 'Виберіть проект';

  @override
  String get addProject => 'Додати проект';

  @override
  String get projectNameLabel => 'Назва проекту';

  @override
  String get projectNameHint => 'Введіть назву для проекту';

  @override
  String get projectAlertLabel => 'Дозволити сповіщення для цього проекту';

  @override
  String get alertChatLabel => 'ID Telegram-чату (необов\'язково)';

  @override
  String get maxParallelTasksLabel =>
      'Максимальна кількість паралельних завдань (необов\'язково)';

  @override
  String get maxParallelTasksHint =>
      'Повинно бути 0 або більше, 0 - необмежено.';

  @override
  String get projectPageTitle => 'Проект';

  @override
  String get titleHistory => 'Історія';

  @override
  String get titleActivity => 'Активність';

  @override
  String get titleTemplate => 'Шаблон';

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
  String get titleTask => 'Завдання';

  @override
  String get rerunTask => 'Запустити завдання повторно';

  @override
  String get runTask => 'Запустити завдання';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Редагувати';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Успішно';

  @override
  String get statusFailed => 'Помилка';

  @override
  String get statusRunning => 'Виконується';

  @override
  String get statusWaiting => 'Очікує';

  @override
  String get statusStopped => 'Зупинено';

  @override
  String get statusUnknown => 'Невідомо';

  @override
  String get taskOutput => 'Вивід завдання';

  @override
  String get taskNoOutput => 'Н/Д';

  @override
  String get taskLabelMessage => 'Повідомлення';

  @override
  String get taskLabelDryRun => 'Сухий запуск';

  @override
  String get taskLabelDebug => 'Налагодження';

  @override
  String get taskLabelDiff => 'Відмінності';

  @override
  String taskCreated(int taskId) {
    return 'Завдання #$taskId створено!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Розпочато о $time';
  }

  @override
  String get taskRunning => 'Виконується...';

  @override
  String taskDuration(String duration) {
    return 'Тривалість: $duration';
  }

  @override
  String byUser(String user) {
    return 'користовачем $user';
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
