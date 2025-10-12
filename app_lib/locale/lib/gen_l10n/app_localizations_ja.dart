// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore ランナー';

  @override
  String get show => '表示';

  @override
  String get hide => '非表示';

  @override
  String get exit => '終了';

  @override
  String get destinationProject => 'プロジェクト';

  @override
  String get destinationSetting => '設定';

  @override
  String get destinationServer => 'Server';

  @override
  String get settingsTitle => '設定';

  @override
  String get smenuTheme => 'テーマ';

  @override
  String get titleSelectAppearance => '外観を選択';

  @override
  String get titleSelectColorTheme => 'アクセントカラーを選択';

  @override
  String get smenuSemaphore => 'Server';

  @override
  String get smenuServer => 'Server';

  @override
  String get smenuSemaphoreServer => 'サーバー';

  @override
  String get titleSelectServer => 'サーバーを選択';

  @override
  String get addServer => 'サーバーを追加';

  @override
  String get serverNameLabel => 'サーバー名';

  @override
  String get serverNameHint => 'サーバー名を入力してください';

  @override
  String get serverUrlLabel => 'サーバーURL';

  @override
  String get serverUrlHint =>
      'サーバーのURLを入力してください。/api 部分を含める必要があります (例: https://semaphore.example.com/api)';

  @override
  String get usernameLabel => 'ユーザー名';

  @override
  String get usernameHint => 'サーバーに認証するためのユーザー名を入力してください';

  @override
  String get passwordLabel => 'パスワード';

  @override
  String get passwordHint => 'サーバーに認証するためのパスワードを入力してください';

  @override
  String get buttonDelete => '削除';

  @override
  String get buttonCancel => 'キャンセル';

  @override
  String get buttonSave => '保存';

  @override
  String get smenuSemaphoreServerProject => 'プロジェクト';

  @override
  String get noServerActivated => '[サーバーがアクティブ化されていません]';

  @override
  String get accidentallyDeleted => '誤って削除されましたか？';

  @override
  String get undo => '元に戻す';

  @override
  String get delete => '削除';

  @override
  String get refresh => '更新';

  @override
  String get autoRefresh => '自動更新';

  @override
  String get rename => '名前を変更';

  @override
  String get serverAdded => 'サーバーが追加されました';

  @override
  String get renameServer => 'サーバーの名前を変更';

  @override
  String serverRenamed(String serverName) {
    return 'サーバー名が $serverName に変更されました';
  }

  @override
  String get clickToSelect => '[選択するにはクリックしてください]';

  @override
  String get titleSelectProject => 'プロジェクトを選択';

  @override
  String get addProject => 'プロジェクトを追加';

  @override
  String get projectNameLabel => 'プロジェクト名';

  @override
  String get projectNameHint => 'プロジェクト名を入力してください';

  @override
  String get projectAlertLabel => 'このプロジェクトのアラートを許可する';

  @override
  String get alertChatLabel => 'Telegram チャットID (オプション)';

  @override
  String get maxParallelTasksLabel => '最大並列タスク数 (オプション)';

  @override
  String get maxParallelTasksHint => '0 以上にする必要があります。0 - 無制限。';

  @override
  String get projectPageTitle => 'プロジェクト';

  @override
  String get titleHistory => '履歴';

  @override
  String get titleActivity => 'アクティビティ';

  @override
  String get titleTemplate => 'テンプレート';

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
  String get titleTask => 'タスク';

  @override
  String get rerunTask => 'タスクを再実行';

  @override
  String get runTask => 'タスクを実行';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => '編集';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => '成功';

  @override
  String get statusFailed => '失敗';

  @override
  String get statusRunning => '実行中';

  @override
  String get statusWaiting => '待機中';

  @override
  String get statusStopped => '停止済み';

  @override
  String get statusUnknown => '不明';

  @override
  String get taskOutput => 'タスク出力';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => 'メッセージ';

  @override
  String get taskLabelDryRun => 'ドライラン';

  @override
  String get taskLabelDebug => 'デバッグ';

  @override
  String get taskLabelDiff => '差分';

  @override
  String taskCreated(int taskId) {
    return 'タスク #$taskId が作成されました！';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return '$time に開始';
  }

  @override
  String get taskRunning => '実行中...';

  @override
  String taskDuration(String duration) {
    return '期間: $duration';
  }

  @override
  String byUser(String user) {
    return '$user によって';
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
