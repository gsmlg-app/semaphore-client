// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TemplateTypeEnum _$templateTypeEnum_empty =
    const TemplateTypeEnum._('empty');
const TemplateTypeEnum _$templateTypeEnum_build =
    const TemplateTypeEnum._('build');
const TemplateTypeEnum _$templateTypeEnum_deploy =
    const TemplateTypeEnum._('deploy');

TemplateTypeEnum _$templateTypeEnumValueOf(String name) {
  switch (name) {
    case 'empty':
      return _$templateTypeEnum_empty;
    case 'build':
      return _$templateTypeEnum_build;
    case 'deploy':
      return _$templateTypeEnum_deploy;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TemplateTypeEnum> _$templateTypeEnumValues =
    BuiltSet<TemplateTypeEnum>(const <TemplateTypeEnum>[
  _$templateTypeEnum_empty,
  _$templateTypeEnum_build,
  _$templateTypeEnum_deploy,
]);

Serializer<TemplateTypeEnum> _$templateTypeEnumSerializer =
    _$TemplateTypeEnumSerializer();

class _$TemplateTypeEnumSerializer
    implements PrimitiveSerializer<TemplateTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'empty': '',
    'build': 'build',
    'deploy': 'deploy',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '': 'empty',
    'build': 'build',
    'deploy': 'deploy',
  };

  @override
  final Iterable<Type> types = const <Type>[TemplateTypeEnum];
  @override
  final String wireName = 'TemplateTypeEnum';

  @override
  Object serialize(Serializers serializers, TemplateTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TemplateTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TemplateTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Template extends Template {
  @override
  final int? id;
  @override
  final int? projectId;
  @override
  final int? inventoryId;
  @override
  final int? repositoryId;
  @override
  final int? environmentId;
  @override
  final int? viewId;
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
  final String? app;
  @override
  final String? gitBranch;
  @override
  final TemplateTypeEnum? type;
  @override
  final String? startVersion;
  @override
  final int? buildTemplateId;
  @override
  final bool? autorun;
  @override
  final BuiltList<TemplateSurveyVar>? surveyVars;
  @override
  final BuiltList<TemplateVault>? vaults;

  factory _$Template([void Function(TemplateBuilder)? updates]) =>
      (TemplateBuilder()..update(updates))._build();

  _$Template._(
      {this.id,
      this.projectId,
      this.inventoryId,
      this.repositoryId,
      this.environmentId,
      this.viewId,
      this.name,
      this.playbook,
      this.arguments,
      this.description,
      this.allowOverrideArgsInTask,
      this.suppressSuccessAlerts,
      this.app,
      this.gitBranch,
      this.type,
      this.startVersion,
      this.buildTemplateId,
      this.autorun,
      this.surveyVars,
      this.vaults})
      : super._();
  @override
  Template rebuild(void Function(TemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateBuilder toBuilder() => TemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Template &&
        id == other.id &&
        projectId == other.projectId &&
        inventoryId == other.inventoryId &&
        repositoryId == other.repositoryId &&
        environmentId == other.environmentId &&
        viewId == other.viewId &&
        name == other.name &&
        playbook == other.playbook &&
        arguments == other.arguments &&
        description == other.description &&
        allowOverrideArgsInTask == other.allowOverrideArgsInTask &&
        suppressSuccessAlerts == other.suppressSuccessAlerts &&
        app == other.app &&
        gitBranch == other.gitBranch &&
        type == other.type &&
        startVersion == other.startVersion &&
        buildTemplateId == other.buildTemplateId &&
        autorun == other.autorun &&
        surveyVars == other.surveyVars &&
        vaults == other.vaults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, inventoryId.hashCode);
    _$hash = $jc(_$hash, repositoryId.hashCode);
    _$hash = $jc(_$hash, environmentId.hashCode);
    _$hash = $jc(_$hash, viewId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, playbook.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, allowOverrideArgsInTask.hashCode);
    _$hash = $jc(_$hash, suppressSuccessAlerts.hashCode);
    _$hash = $jc(_$hash, app.hashCode);
    _$hash = $jc(_$hash, gitBranch.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startVersion.hashCode);
    _$hash = $jc(_$hash, buildTemplateId.hashCode);
    _$hash = $jc(_$hash, autorun.hashCode);
    _$hash = $jc(_$hash, surveyVars.hashCode);
    _$hash = $jc(_$hash, vaults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Template')
          ..add('id', id)
          ..add('projectId', projectId)
          ..add('inventoryId', inventoryId)
          ..add('repositoryId', repositoryId)
          ..add('environmentId', environmentId)
          ..add('viewId', viewId)
          ..add('name', name)
          ..add('playbook', playbook)
          ..add('arguments', arguments)
          ..add('description', description)
          ..add('allowOverrideArgsInTask', allowOverrideArgsInTask)
          ..add('suppressSuccessAlerts', suppressSuccessAlerts)
          ..add('app', app)
          ..add('gitBranch', gitBranch)
          ..add('type', type)
          ..add('startVersion', startVersion)
          ..add('buildTemplateId', buildTemplateId)
          ..add('autorun', autorun)
          ..add('surveyVars', surveyVars)
          ..add('vaults', vaults))
        .toString();
  }
}

class TemplateBuilder implements Builder<Template, TemplateBuilder> {
  _$Template? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _inventoryId;
  int? get inventoryId => _$this._inventoryId;
  set inventoryId(int? inventoryId) => _$this._inventoryId = inventoryId;

  int? _repositoryId;
  int? get repositoryId => _$this._repositoryId;
  set repositoryId(int? repositoryId) => _$this._repositoryId = repositoryId;

  int? _environmentId;
  int? get environmentId => _$this._environmentId;
  set environmentId(int? environmentId) =>
      _$this._environmentId = environmentId;

  int? _viewId;
  int? get viewId => _$this._viewId;
  set viewId(int? viewId) => _$this._viewId = viewId;

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

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  String? _gitBranch;
  String? get gitBranch => _$this._gitBranch;
  set gitBranch(String? gitBranch) => _$this._gitBranch = gitBranch;

  TemplateTypeEnum? _type;
  TemplateTypeEnum? get type => _$this._type;
  set type(TemplateTypeEnum? type) => _$this._type = type;

  String? _startVersion;
  String? get startVersion => _$this._startVersion;
  set startVersion(String? startVersion) => _$this._startVersion = startVersion;

  int? _buildTemplateId;
  int? get buildTemplateId => _$this._buildTemplateId;
  set buildTemplateId(int? buildTemplateId) =>
      _$this._buildTemplateId = buildTemplateId;

  bool? _autorun;
  bool? get autorun => _$this._autorun;
  set autorun(bool? autorun) => _$this._autorun = autorun;

  ListBuilder<TemplateSurveyVar>? _surveyVars;
  ListBuilder<TemplateSurveyVar> get surveyVars =>
      _$this._surveyVars ??= ListBuilder<TemplateSurveyVar>();
  set surveyVars(ListBuilder<TemplateSurveyVar>? surveyVars) =>
      _$this._surveyVars = surveyVars;

  ListBuilder<TemplateVault>? _vaults;
  ListBuilder<TemplateVault> get vaults =>
      _$this._vaults ??= ListBuilder<TemplateVault>();
  set vaults(ListBuilder<TemplateVault>? vaults) => _$this._vaults = vaults;

  TemplateBuilder() {
    Template._defaults(this);
  }

  TemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _projectId = $v.projectId;
      _inventoryId = $v.inventoryId;
      _repositoryId = $v.repositoryId;
      _environmentId = $v.environmentId;
      _viewId = $v.viewId;
      _name = $v.name;
      _playbook = $v.playbook;
      _arguments = $v.arguments;
      _description = $v.description;
      _allowOverrideArgsInTask = $v.allowOverrideArgsInTask;
      _suppressSuccessAlerts = $v.suppressSuccessAlerts;
      _app = $v.app;
      _gitBranch = $v.gitBranch;
      _type = $v.type;
      _startVersion = $v.startVersion;
      _buildTemplateId = $v.buildTemplateId;
      _autorun = $v.autorun;
      _surveyVars = $v.surveyVars?.toBuilder();
      _vaults = $v.vaults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Template other) {
    _$v = other as _$Template;
  }

  @override
  void update(void Function(TemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Template build() => _build();

  _$Template _build() {
    _$Template _$result;
    try {
      _$result = _$v ??
          _$Template._(
            id: id,
            projectId: projectId,
            inventoryId: inventoryId,
            repositoryId: repositoryId,
            environmentId: environmentId,
            viewId: viewId,
            name: name,
            playbook: playbook,
            arguments: arguments,
            description: description,
            allowOverrideArgsInTask: allowOverrideArgsInTask,
            suppressSuccessAlerts: suppressSuccessAlerts,
            app: app,
            gitBranch: gitBranch,
            type: type,
            startVersion: startVersion,
            buildTemplateId: buildTemplateId,
            autorun: autorun,
            surveyVars: _surveyVars?.build(),
            vaults: _vaults?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'surveyVars';
        _surveyVars?.build();
        _$failedField = 'vaults';
        _vaults?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Template', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
