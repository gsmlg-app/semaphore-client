// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore Runner';

  @override
  String get show => 'Mostrar';

  @override
  String get hide => 'Ocultar';

  @override
  String get exit => 'Salir';

  @override
  String get destinationProject => 'Proyecto';

  @override
  String get destinationSetting => 'Configuración';

  @override
  String get destinationServer => 'Server';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get smenuTheme => 'Tema';

  @override
  String get titleSelectAppearance => 'Seleccionar Apariencia';

  @override
  String get titleSelectColorTheme => 'Seleccionar Color de Acentos';

  @override
  String get smenuSemaphore => 'Server';

  @override
  String get smenuServer => 'Server';

  @override
  String get smenuSemaphoreServer => 'Servidor';

  @override
  String get titleSelectServer => 'Seleccionar Servidor';

  @override
  String get addServer => 'Agregar Servidor';

  @override
  String get serverNameLabel => 'Nombre del Servidor';

  @override
  String get serverNameHint => 'Ingrese un nombre para el servidor';

  @override
  String get serverUrlLabel => 'URL del Servidor';

  @override
  String get serverUrlHint =>
      'Ingrese la URL del servidor, debe incluir la parte /api, por ejemplo, https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'Nombre de Usuario';

  @override
  String get usernameHint =>
      'Ingrese el nombre de usuario para autenticarse con el servidor';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get passwordHint =>
      'Ingrese la contraseña para autenticarse con el servidor';

  @override
  String get buttonDelete => 'Eliminar';

  @override
  String get buttonCancel => 'Cancelar';

  @override
  String get buttonSave => 'Guardar';

  @override
  String get smenuSemaphoreServerProject => 'Proyecto';

  @override
  String get noServerActivated => '[No hay ningún servidor activado]';

  @override
  String get accidentallyDeleted => '¿Eliminado por error?';

  @override
  String get undo => 'Deshacer';

  @override
  String get delete => 'Eliminar';

  @override
  String get refresh => 'Actualizar';

  @override
  String get autoRefresh => 'Actualización Automática';

  @override
  String get rename => 'Renombrar';

  @override
  String get serverAdded => 'Servidor agregado';

  @override
  String get renameServer => 'Renombrar Servidor';

  @override
  String serverRenamed(String serverName) {
    return 'Servidor renombrado a $serverName';
  }

  @override
  String get clickToSelect => '[Click para Seleccionar]';

  @override
  String get titleSelectProject => 'Seleccionar Proyecto';

  @override
  String get addProject => 'Agregar Proyecto';

  @override
  String get projectNameLabel => 'Nombre del Proyecto';

  @override
  String get projectNameHint => 'Ingrese un nombre para el proyecto';

  @override
  String get projectAlertLabel => 'Permitir alertas para este proyecto';

  @override
  String get alertChatLabel => 'ID de Chat de Telegram (Opcional)';

  @override
  String get maxParallelTasksLabel =>
      'Número máximo de tareas en paralelo (Opcional)';

  @override
  String get maxParallelTasksHint => 'Debe ser 0 o mayor, 0 - ilimitado.';

  @override
  String get projectPageTitle => 'Proyecto';

  @override
  String get titleHistory => 'Historial';

  @override
  String get titleActivity => 'Actividad';

  @override
  String get titleTemplate => 'Plantilla';

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
  String get titleTask => 'Tarea';

  @override
  String get rerunTask => 'Re-ejecutar Tarea';

  @override
  String get runTask => 'Ejecutar Tarea';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'Editar';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'Éxito';

  @override
  String get statusFailed => 'Falla';

  @override
  String get statusRunning => 'En Ejecución';

  @override
  String get statusWaiting => 'Esperando';

  @override
  String get statusStopped => 'Detenido';

  @override
  String get statusUnknown => 'Desconocido';

  @override
  String get taskOutput => 'Salida de la Tarea';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'Mensaje';

  @override
  String get taskLabelDryRun => 'Ejecución en Seco';

  @override
  String get taskLabelDebug => 'Depuración';

  @override
  String get taskLabelDiff => 'Diferencia';

  @override
  String taskCreated(int taskId) {
    return 'Tarea #$taskId creada!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'Iniciada a las $time';
  }

  @override
  String get taskRunning => 'En ejecución...';

  @override
  String taskDuration(String duration) {
    return 'Duración: $duration';
  }

  @override
  String byUser(String user) {
    return 'por $user';
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
