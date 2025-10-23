// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_templates_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectBackupTemplatesInner extends ProjectBackupTemplatesInner {
  @override
  final String? inventory;
  @override
  final String? repository;
  @override
  final String? environment;
  @override
  final String? view;
  @override
  final String? name;
  @override
  final String? playbook;
  @override
  final String? arguments;
  @override
  final String? description;
  @override
  final bool? allowOverrideArgsInTask;
  @override
  final bool? suppressSuccessAlerts;
  @override
  final String? cron;
  @override
  final String? buildTemplate;
  @override
  final bool? autorun;
  @override
  final String? surveyVars;
  @override
  final String? startVersion;
  @override
  final String? type;
  @override
  final String? vaultKey;
  @override
  final bool? allowOverrideBranchInTask;

  factory _$ProjectBackupTemplatesInner(
          [void Function(ProjectBackupTemplatesInnerBuilder)? updates]) =>
      (ProjectBackupTemplatesInnerBuilder()..update(updates))._build();

  _$ProjectBackupTemplatesInner._(
      {this.inventory,
      this.repository,
      this.environment,
      this.view,
      this.name,
      this.playbook,
      this.arguments,
      this.description,
      this.allowOverrideArgsInTask,
      this.suppressSuccessAlerts,
      this.cron,
      this.buildTemplate,
      this.autorun,
      this.surveyVars,
      this.startVersion,
      this.type,
      this.vaultKey,
      this.allowOverrideBranchInTask})
      : super._();
  @override
  ProjectBackupTemplatesInner rebuild(
          void Function(ProjectBackupTemplatesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupTemplatesInnerBuilder toBuilder() =>
      ProjectBackupTemplatesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackupTemplatesInner &&
        inventory == other.inventory &&
        repository == other.repository &&
        environment == other.environment &&
        view == other.view &&
        name == other.name &&
        playbook == other.playbook &&
        arguments == other.arguments &&
        description == other.description &&
        allowOverrideArgsInTask == other.allowOverrideArgsInTask &&
        suppressSuccessAlerts == other.suppressSuccessAlerts &&
        cron == other.cron &&
        buildTemplate == other.buildTemplate &&
        autorun == other.autorun &&
        surveyVars == other.surveyVars &&
        startVersion == other.startVersion &&
        type == other.type &&
        vaultKey == other.vaultKey &&
        allowOverrideBranchInTask == other.allowOverrideBranchInTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inventory.hashCode);
    _$hash = $jc(_$hash, repository.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, view.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, playbook.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, allowOverrideArgsInTask.hashCode);
    _$hash = $jc(_$hash, suppressSuccessAlerts.hashCode);
    _$hash = $jc(_$hash, cron.hashCode);
    _$hash = $jc(_$hash, buildTemplate.hashCode);
    _$hash = $jc(_$hash, autorun.hashCode);
    _$hash = $jc(_$hash, surveyVars.hashCode);
    _$hash = $jc(_$hash, startVersion.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, vaultKey.hashCode);
    _$hash = $jc(_$hash, allowOverrideBranchInTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackupTemplatesInner')
          ..add('inventory', inventory)
          ..add('repository', repository)
          ..add('environment', environment)
          ..add('view', view)
          ..add('name', name)
          ..add('playbook', playbook)
          ..add('arguments', arguments)
          ..add('description', description)
          ..add('allowOverrideArgsInTask', allowOverrideArgsInTask)
          ..add('suppressSuccessAlerts', suppressSuccessAlerts)
          ..add('cron', cron)
          ..add('buildTemplate', buildTemplate)
          ..add('autorun', autorun)
          ..add('surveyVars', surveyVars)
          ..add('startVersion', startVersion)
          ..add('type', type)
          ..add('vaultKey', vaultKey)
          ..add('allowOverrideBranchInTask', allowOverrideBranchInTask))
        .toString();
  }
}

class ProjectBackupTemplatesInnerBuilder
    implements
        Builder<ProjectBackupTemplatesInner,
            ProjectBackupTemplatesInnerBuilder> {
  _$ProjectBackupTemplatesInner? _$v;

  String? _inventory;
  String? get inventory => _$this._inventory;
  set inventory(String? inventory) => _$this._inventory = inventory;

  String? _repository;
  String? get repository => _$this._repository;
  set repository(String? repository) => _$this._repository = repository;

  String? _environment;
  String? get environment => _$this._environment;
  set environment(String? environment) => _$this._environment = environment;

  String? _view;
  String? get view => _$this._view;
  set view(String? view) => _$this._view = view;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _playbook;
  String? get playbook => _$this._playbook;
  set playbook(String? playbook) => _$this._playbook = playbook;

  String? _arguments;
  String? get arguments => _$this._arguments;
  set arguments(String? arguments) => _$this._arguments = arguments;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _allowOverrideArgsInTask;
  bool? get allowOverrideArgsInTask => _$this._allowOverrideArgsInTask;
  set allowOverrideArgsInTask(bool? allowOverrideArgsInTask) =>
      _$this._allowOverrideArgsInTask = allowOverrideArgsInTask;

  bool? _suppressSuccessAlerts;
  bool? get suppressSuccessAlerts => _$this._suppressSuccessAlerts;
  set suppressSuccessAlerts(bool? suppressSuccessAlerts) =>
      _$this._suppressSuccessAlerts = suppressSuccessAlerts;

  String? _cron;
  String? get cron => _$this._cron;
  set cron(String? cron) => _$this._cron = cron;

  String? _buildTemplate;
  String? get buildTemplate => _$this._buildTemplate;
  set buildTemplate(String? buildTemplate) =>
      _$this._buildTemplate = buildTemplate;

  bool? _autorun;
  bool? get autorun => _$this._autorun;
  set autorun(bool? autorun) => _$this._autorun = autorun;

  String? _surveyVars;
  String? get surveyVars => _$this._surveyVars;
  set surveyVars(String? surveyVars) => _$this._surveyVars = surveyVars;

  String? _startVersion;
  String? get startVersion => _$this._startVersion;
  set startVersion(String? startVersion) => _$this._startVersion = startVersion;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _vaultKey;
  String? get vaultKey => _$this._vaultKey;
  set vaultKey(String? vaultKey) => _$this._vaultKey = vaultKey;

  bool? _allowOverrideBranchInTask;
  bool? get allowOverrideBranchInTask => _$this._allowOverrideBranchInTask;
  set allowOverrideBranchInTask(bool? allowOverrideBranchInTask) =>
      _$this._allowOverrideBranchInTask = allowOverrideBranchInTask;

  ProjectBackupTemplatesInnerBuilder() {
    ProjectBackupTemplatesInner._defaults(this);
  }

  ProjectBackupTemplatesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inventory = $v.inventory;
      _repository = $v.repository;
      _environment = $v.environment;
      _view = $v.view;
      _name = $v.name;
      _playbook = $v.playbook;
      _arguments = $v.arguments;
      _description = $v.description;
      _allowOverrideArgsInTask = $v.allowOverrideArgsInTask;
      _suppressSuccessAlerts = $v.suppressSuccessAlerts;
      _cron = $v.cron;
      _buildTemplate = $v.buildTemplate;
      _autorun = $v.autorun;
      _surveyVars = $v.surveyVars;
      _startVersion = $v.startVersion;
      _type = $v.type;
      _vaultKey = $v.vaultKey;
      _allowOverrideBranchInTask = $v.allowOverrideBranchInTask;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackupTemplatesInner other) {
    _$v = other as _$ProjectBackupTemplatesInner;
  }

  @override
  void update(void Function(ProjectBackupTemplatesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackupTemplatesInner build() => _build();

  _$ProjectBackupTemplatesInner _build() {
    final _$result = _$v ??
        _$ProjectBackupTemplatesInner._(
          inventory: inventory,
          repository: repository,
          environment: environment,
          view: view,
          name: name,
          playbook: playbook,
          arguments: arguments,
          description: description,
          allowOverrideArgsInTask: allowOverrideArgsInTask,
          suppressSuccessAlerts: suppressSuccessAlerts,
          cron: cron,
          buildTemplate: buildTemplate,
          autorun: autorun,
          surveyVars: surveyVars,
          startVersion: startVersion,
          type: type,
          vaultKey: vaultKey,
          allowOverrideBranchInTask: allowOverrideBranchInTask,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
