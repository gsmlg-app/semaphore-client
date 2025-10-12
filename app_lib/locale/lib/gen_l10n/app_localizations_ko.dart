// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore 실행기';

  @override
  String get show => '보이기';

  @override
  String get hide => '숨기기';

  @override
  String get exit => '종료';

  @override
  String get destinationProject => '프로젝트';

  @override
  String get destinationSetting => '설정';

  @override
  String get destinationServer => 'Server';

  @override
  String get settingsTitle => '설정';

  @override
  String get smenuTheme => '테마';

  @override
  String get titleSelectAppearance => '모양 선택';

  @override
  String get titleSelectColorTheme => '색상 테마 선택';

  @override
  String get smenuSemaphore => 'Server';

  @override
  String get smenuServer => 'Server';

  @override
  String get smenuSemaphoreServer => '서버';

  @override
  String get titleSelectServer => '서버 선택';

  @override
  String get addServer => '서버 추가';

  @override
  String get serverNameLabel => '서버 이름';

  @override
  String get serverNameHint => '서버 이름을 입력하십시오.';

  @override
  String get serverUrlLabel => '서버 URL';

  @override
  String get serverUrlHint =>
      '서버의 URL을 입력하십시오. /api 부분을 포함해야 합니다. 예: https://semaphore.example.com/api';

  @override
  String get usernameLabel => '사용자 이름';

  @override
  String get usernameHint => '서버 인증에 사용할 사용자 이름을 입력하십시오.';

  @override
  String get passwordLabel => '비밀번호';

  @override
  String get passwordHint => '서버 인증에 사용할 비밀번호를 입력하십시오.';

  @override
  String get buttonDelete => '삭제';

  @override
  String get buttonCancel => '취소';

  @override
  String get buttonSave => '저장';

  @override
  String get smenuSemaphoreServerProject => '프로젝트';

  @override
  String get noServerActivated => '[활성화된 서버 없음]';

  @override
  String get accidentallyDeleted => '실수로 삭제하셨나요?';

  @override
  String get undo => '실행 취소';

  @override
  String get delete => '삭제';

  @override
  String get refresh => '새로 고침';

  @override
  String get autoRefresh => '자동 새로 고침';

  @override
  String get rename => '이름 바꾸기';

  @override
  String get serverAdded => '서버가 추가되었습니다.';

  @override
  String get renameServer => '서버 이름 바꾸기';

  @override
  String serverRenamed(String serverName) {
    return '서버 이름이 $serverName로 변경되었습니다.';
  }

  @override
  String get clickToSelect => '[선택하려면 클릭하십시오.]';

  @override
  String get titleSelectProject => '프로젝트 선택';

  @override
  String get addProject => '프로젝트 추가';

  @override
  String get projectNameLabel => '프로젝트 이름';

  @override
  String get projectNameHint => '프로젝트 이름을 입력하십시오.';

  @override
  String get projectAlertLabel => '이 프로젝트에 대한 알림 허용';

  @override
  String get alertChatLabel => '텔레그램 채팅 ID (선택 사항)';

  @override
  String get maxParallelTasksLabel => '최대 병렬 작업 수 (선택 사항)';

  @override
  String get maxParallelTasksHint => '0 이상이어야 합니다. 0 - 무제한.';

  @override
  String get projectPageTitle => '프로젝트';

  @override
  String get titleHistory => '내역';

  @override
  String get titleActivity => '활동';

  @override
  String get titleTemplate => '템플릿';

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
  String get titleTask => '작업';

  @override
  String get rerunTask => '작업 다시 실행';

  @override
  String get runTask => '작업 실행';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => '편집';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => '성공';

  @override
  String get statusFailed => '실패';

  @override
  String get statusRunning => '실행 중';

  @override
  String get statusWaiting => '대기 중';

  @override
  String get statusStopped => '중지됨';

  @override
  String get statusUnknown => '알 수 없음';

  @override
  String get taskOutput => '작업 출력';

  @override
  String get taskNoOutput => 'N/A';

  @override
  String get taskLabelMessage => '메시지';

  @override
  String get taskLabelDryRun => 'Dry Run';

  @override
  String get taskLabelDebug => '디버그';

  @override
  String get taskLabelDiff => 'Diff';

  @override
  String taskCreated(int taskId) {
    return '작업 #$taskId 생성됨!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return '$time에 시작됨';
  }

  @override
  String get taskRunning => '실행 중...';

  @override
  String taskDuration(String duration) {
    return '지속 시간: $duration';
  }

  @override
  String byUser(String user) {
    return '$user에 의함';
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
