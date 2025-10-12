// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore Runner';

  @override
  String get show => 'Показать';

  @override
  String get hide => 'Скрыть';

  @override
  String get exit => 'Выход';

  @override
  String get destinationProject => 'Проект';

  @override
  String get destinationSetting => 'Настройка';

  @override
  String get destinationServer => 'Server';

  @override
  String get settingsTitle => 'Настройка';

  @override
  String get smenuTheme => 'Тема';

  @override
  String get titleSelectAppearance => 'Выберите внешний вид';

  @override
  String get titleSelectColorTheme => 'Выберите акцентный цвет';

  @override
  String get smenuSemaphore => 'Server';

  @override
  String get smenuServer => 'Server';

  @override
  String get smenuSemaphoreServer => 'Сервер';

  @override
  String get titleSelectServer => 'Выберите сервер';

  @override
  String get addServer => 'Добавить сервер';

  @override
  String get serverNameLabel => 'Имя сервера';

  @override
  String get serverNameHint => 'Введите имя для сервера';

  @override
  String get serverUrlLabel => 'URL сервера';

  @override
  String get serverUrlHint =>
      'Введите URL сервера, он должен включать часть /api, например https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Имя пользователя';

  @override
  String get usernameHint =>
      'Введите имя пользователя для аутентификации на сервере';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get passwordHint => 'Введите пароль для аутентификации на сервере';

  @override
  String get buttonDelete => 'Удалить';

  @override
  String get buttonCancel => 'Отмена';

  @override
  String get buttonSave => 'Сохранить';

  @override
  String get smenuSemaphoreServerProject => 'Проект';

  @override
  String get noServerActivated => '[Нет активных серверов]';

  @override
  String get accidentallyDeleted => 'Удалено случайно?';

  @override
  String get undo => 'Отменить';

  @override
  String get delete => 'Удалить';

  @override
  String get refresh => 'Обновить';

  @override
  String get autoRefresh => 'Автообновление';

  @override
  String get rename => 'Переименовать';

  @override
  String get serverAdded => 'Сервер добавлен';

  @override
  String get renameServer => 'Переименовать сервер';

  @override
  String serverRenamed(String serverName) {
    return 'Сервер переименован в $serverName';
  }

  @override
  String get clickToSelect => '[Нажмите, чтобы выбрать]';

  @override
  String get titleSelectProject => 'Выберите проект';

  @override
  String get addProject => 'Добавить проект';

  @override
  String get projectNameLabel => 'Имя проекта';

  @override
  String get projectNameHint => 'Введите имя для проекта';

  @override
  String get projectAlertLabel => 'Разрешить оповещения для этого проекта';

  @override
  String get alertChatLabel => 'Telegram Chat ID (необязательно)';

  @override
  String get maxParallelTasksLabel =>
      'Максимальное количество параллельных задач (необязательно)';

  @override
  String get maxParallelTasksHint =>
      'Должно быть 0 или больше, 0 - неограниченное количество.';

  @override
  String get projectPageTitle => 'Проект';

  @override
  String get titleHistory => 'История';

  @override
  String get titleActivity => 'Активность';

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
  String get titleTask => 'Задача';

  @override
  String get rerunTask => 'Повторить задачу';

  @override
  String get runTask => 'Запустить задачу';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Изменить';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Успешно';

  @override
  String get statusFailed => 'Ошибка';

  @override
  String get statusRunning => 'Выполняется';

  @override
  String get statusWaiting => 'В ожидании';

  @override
  String get statusStopped => 'Остановлено';

  @override
  String get statusUnknown => 'Неизвестно';

  @override
  String get taskOutput => 'Вывод задачи';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'Сообщение';

  @override
  String get taskLabelDryRun => 'Прогон без изменений';

  @override
  String get taskLabelDebug => 'Отладка';

  @override
  String get taskLabelDiff => 'Различия';

  @override
  String taskCreated(int taskId) {
    return 'Задача #$taskId создана!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Начато в $time';
  }

  @override
  String get taskRunning => 'Выполняется...';

  @override
  String taskDuration(String duration) {
    return 'Длительность: $duration';
  }

  @override
  String byUser(String user) {
    return 'пользователем $user';
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
