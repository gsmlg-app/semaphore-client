// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore 运行器';

  @override
  String get show => '显示';

  @override
  String get hide => '隐藏';

  @override
  String get exit => '退出';

  @override
  String get destinationProject => '项目';

  @override
  String get destinationSetting => '设置';

  @override
  String get settingsTitle => '设置';

  @override
  String get smenuTheme => '主题';

  @override
  String get titleSelectAppearance => '选择外观';

  @override
  String get titleSelectColorTheme => '选择主题色';

  @override
  String get smenuSemaphore => 'Ansible Semaphore';

  @override
  String get smenuSemaphoreServer => '服务器';

  @override
  String get titleSelectServer => '选择服务器';

  @override
  String get addServer => '添加服务器';

  @override
  String get serverNameLabel => '服务器名称';

  @override
  String get serverNameHint => '输入服务器名称';

  @override
  String get serverUrlLabel => '服务器 URL';

  @override
  String get serverUrlHint =>
      '输入服务器 URL，必须包含 /api 部分，例如 https://semaphore.example.com/api';

  @override
  String get usernameLabel => '用户名';

  @override
  String get usernameHint => '输入用于验证服务器的用户名';

  @override
  String get passwordLabel => '密码';

  @override
  String get passwordHint => '输入用于验证服务器的密码';

  @override
  String get buttonDelete => '删除';

  @override
  String get buttonCancel => '取消';

  @override
  String get buttonSave => '保存';

  @override
  String get smenuSemaphoreServerProject => '项目';

  @override
  String get noServerActivated => '[未激活任何服务器]';

  @override
  String get accidentallyDeleted => '不小心删除了？';

  @override
  String get undo => '撤销';

  @override
  String get delete => '删除';

  @override
  String get refresh => '刷新';

  @override
  String get autoRefresh => '自动刷新';

  @override
  String get rename => '重命名';

  @override
  String get serverAdded => '服务器已添加';

  @override
  String get renameServer => '重命名服务器';

  @override
  String serverRenamed(String serverName) {
    return '服务器已重命名为 $serverName';
  }

  @override
  String get clickToSelect => '[点击选择]';

  @override
  String get titleSelectProject => '选择项目';

  @override
  String get addProject => '添加项目';

  @override
  String get projectNameLabel => '项目名称';

  @override
  String get projectNameHint => '输入项目名称';

  @override
  String get projectAlertLabel => '允许此项目发出警报';

  @override
  String get alertChatLabel => 'Telegram 聊天 ID（可选）';

  @override
  String get maxParallelTasksLabel => '最大并行任务数（可选）';

  @override
  String get maxParallelTasksHint => '应为 0 或更大，0 - 无限。';

  @override
  String get projectPageTitle => '项目';

  @override
  String get titleHistory => '历史记录';

  @override
  String get titleActivity => '活动';

  @override
  String get titleTemplate => '模板';

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
  String get titleTask => '任务';

  @override
  String get rerunTask => '重新运行任务';

  @override
  String get runTask => '运行任务';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => '编辑';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => '成功';

  @override
  String get statusFailed => '失败';

  @override
  String get statusRunning => '正在运行';

  @override
  String get statusWaiting => '等待';

  @override
  String get statusStopped => '已停止';

  @override
  String get statusUnknown => '未知';

  @override
  String get taskOutput => '任务输出';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => '消息';

  @override
  String get taskLabelDryRun => '试运行';

  @override
  String get taskLabelDebug => '调试';

  @override
  String get taskLabelDiff => '差异';

  @override
  String taskCreated(int taskId) {
    return '任务 #$taskId 已创建！';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return '开始于 $time';
  }

  @override
  String get taskRunning => '正在运行...';

  @override
  String taskDuration(String duration) {
    return '持续时间：$duration';
  }

  @override
  String byUser(String user) {
    return '由 $user 执行';
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

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appName => 'Ansible Semaphore 运行器';

  @override
  String get show => '显示';

  @override
  String get hide => '隐藏';

  @override
  String get exit => '退出';

  @override
  String get destinationProject => '项目';

  @override
  String get destinationSetting => '设置';

  @override
  String get settingsTitle => '设置';

  @override
  String get smenuTheme => '主题';

  @override
  String get titleSelectAppearance => '选择外观';

  @override
  String get titleSelectColorTheme => '选择强调色';

  @override
  String get smenuSemaphore => 'Ansible Semaphore';

  @override
  String get smenuSemaphoreServer => '服务器';

  @override
  String get titleSelectServer => '选择服务器';

  @override
  String get addServer => '添加服务器';

  @override
  String get serverNameLabel => '服务器名称';

  @override
  String get serverNameHint => '输入服务器名称';

  @override
  String get serverUrlLabel => '服务器 URL';

  @override
  String get serverUrlHint =>
      '输入服务器 URL，必须包含 /api 部分，例如 https://semaphore.example.com/api';

  @override
  String get usernameLabel => '用户名';

  @override
  String get usernameHint => '输入用于验证服务器的用户名';

  @override
  String get passwordLabel => '密码';

  @override
  String get passwordHint => '输入用于验证服务器的密码';

  @override
  String get buttonDelete => '删除';

  @override
  String get buttonCancel => '取消';

  @override
  String get buttonSave => '保存';

  @override
  String get smenuSemaphoreServerProject => '项目';

  @override
  String get noServerActivated => '[没有激活的服务器]';

  @override
  String get accidentallyDeleted => '意外删除？';

  @override
  String get undo => '撤销';

  @override
  String get delete => '删除';

  @override
  String get refresh => '刷新';

  @override
  String get autoRefresh => '自动刷新';

  @override
  String get rename => '重命名';

  @override
  String get serverAdded => '服务器已添加';

  @override
  String get renameServer => '重命名服务器';

  @override
  String serverRenamed(String serverName) {
    return '服务器已重命名为 $serverName';
  }

  @override
  String get clickToSelect => '[点击选择]';

  @override
  String get titleSelectProject => '选择项目';

  @override
  String get addProject => '添加项目';

  @override
  String get projectNameLabel => '项目名称';

  @override
  String get projectNameHint => '输入项目名称';

  @override
  String get projectAlertLabel => '允许此项目的警报';

  @override
  String get alertChatLabel => 'Telegram 聊天 ID（可选）';

  @override
  String get maxParallelTasksLabel => '最大并行任务数（可选）';

  @override
  String get maxParallelTasksHint => '应为 0 或更大，0 - 无限。';

  @override
  String get projectPageTitle => '项目';

  @override
  String get titleHistory => '历史记录';

  @override
  String get titleActivity => '活动';

  @override
  String get titleTemplate => '模板';

  @override
  String get titleTask => '任务';

  @override
  String get rerunTask => '重新运行任务';

  @override
  String get runTask => '运行任务';

  @override
  String get edit => '编辑';

  @override
  String get statusSuccess => '成功';

  @override
  String get statusFailed => '失败';

  @override
  String get statusRunning => '运行中';

  @override
  String get statusWaiting => '等待';

  @override
  String get statusStopped => '已停止';

  @override
  String get statusUnknown => '未知';

  @override
  String get taskOutput => '任务输出';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => '消息';

  @override
  String get taskLabelDryRun => '模拟运行';

  @override
  String get taskLabelDebug => '调试';

  @override
  String get taskLabelDiff => '差异';

  @override
  String taskCreated(int taskId) {
    return '任务 #$taskId 已创建！';
  }

  @override
  String taskStartedAt(String time) {
    return '开始于 $time';
  }

  @override
  String get taskRunning => '运行中...';

  @override
  String taskDuration(String duration) {
    return '时长：$duration';
  }

  @override
  String byUser(String user) {
    return '由 $user 执行';
  }
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appName => 'Ansible Semaphore 執行器';

  @override
  String get show => '顯示';

  @override
  String get hide => '隱藏';

  @override
  String get exit => '退出';

  @override
  String get destinationProject => '專案';

  @override
  String get destinationSetting => '設定';

  @override
  String get settingsTitle => '設定';

  @override
  String get smenuTheme => '主題';

  @override
  String get titleSelectAppearance => '選擇外觀';

  @override
  String get titleSelectColorTheme => '選擇強調顏色';

  @override
  String get smenuSemaphore => 'Ansible Semaphore';

  @override
  String get smenuSemaphoreServer => '伺服器';

  @override
  String get titleSelectServer => '選擇伺服器';

  @override
  String get addServer => '新增伺服器';

  @override
  String get serverNameLabel => '伺服器名稱';

  @override
  String get serverNameHint => '輸入伺服器名稱';

  @override
  String get serverUrlLabel => '伺服器 URL';

  @override
  String get serverUrlHint =>
      '輸入伺服器 URL，必須包含 /api 部分，例如 https://semaphore.example.com/api';

  @override
  String get usernameLabel => '使用者名稱';

  @override
  String get usernameHint => '輸入用於驗證伺服器的使用者名稱';

  @override
  String get passwordLabel => '密碼';

  @override
  String get passwordHint => '輸入用於驗證伺服器的密碼';

  @override
  String get buttonDelete => '刪除';

  @override
  String get buttonCancel => '取消';

  @override
  String get buttonSave => '儲存';

  @override
  String get smenuSemaphoreServerProject => '專案';

  @override
  String get noServerActivated => '[未啟用伺服器]';

  @override
  String get accidentallyDeleted => '意外刪除？';

  @override
  String get undo => '復原';

  @override
  String get delete => '刪除';

  @override
  String get refresh => '重新整理';

  @override
  String get autoRefresh => '自動重新整理';

  @override
  String get rename => '重新命名';

  @override
  String get serverAdded => '伺服器已新增';

  @override
  String get renameServer => '重新命名伺服器';

  @override
  String serverRenamed(String serverName) {
    return '伺服器已重新命名為 $serverName';
  }

  @override
  String get clickToSelect => '[點擊選擇]';

  @override
  String get titleSelectProject => '選擇專案';

  @override
  String get addProject => '新增專案';

  @override
  String get projectNameLabel => '專案名稱';

  @override
  String get projectNameHint => '輸入專案名稱';

  @override
  String get projectAlertLabel => '允許此專案發送警報';

  @override
  String get alertChatLabel => 'Telegram 聊天 ID (選填)';

  @override
  String get maxParallelTasksLabel => '最大平行任務數 (選填)';

  @override
  String get maxParallelTasksHint => '應為 0 或更大，0 - 無限制。';

  @override
  String get projectPageTitle => '專案';

  @override
  String get titleHistory => '歷史紀錄';

  @override
  String get titleActivity => '活動';

  @override
  String get titleTemplate => '範本';

  @override
  String get titleTask => '任務';

  @override
  String get rerunTask => '重新執行任務';

  @override
  String get runTask => '執行任務';

  @override
  String get edit => '編輯';

  @override
  String get statusSuccess => '成功';

  @override
  String get statusFailed => '失敗';

  @override
  String get statusRunning => '執行中';

  @override
  String get statusWaiting => '等待中';

  @override
  String get statusStopped => '已停止';

  @override
  String get statusUnknown => '未知';

  @override
  String get taskOutput => '任務輸出';

  @override
  String get taskNoOutput => '無';

  @override
  String get taskLabelMessage => '訊息';

  @override
  String get taskLabelDryRun => '測試執行';

  @override
  String get taskLabelDebug => '除錯';

  @override
  String get taskLabelDiff => '差異';

  @override
  String taskCreated(int taskId) {
    return '已建立任務 #$taskId！';
  }

  @override
  String taskStartedAt(String time) {
    return '於 $time 開始';
  }

  @override
  String get taskRunning => '執行中...';

  @override
  String taskDuration(String duration) {
    return '持續時間：$duration';
  }

  @override
  String byUser(String user) {
    return '由 $user 執行';
  }
}
