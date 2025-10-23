// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TemplateRequestTypeEnum _$templateRequestTypeEnum_empty =
    const TemplateRequestTypeEnum._('empty');
const TemplateRequestTypeEnum _$templateRequestTypeEnum_build =
    const TemplateRequestTypeEnum._('build');
const TemplateRequestTypeEnum _$templateRequestTypeEnum_deploy =
    const TemplateRequestTypeEnum._('deploy');

TemplateRequestTypeEnum _$templateRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'empty':
      return _$templateRequestTypeEnum_empty;
    case 'build':
      return _$templateRequestTypeEnum_build;
    case 'deploy':
      return _$templateRequestTypeEnum_deploy;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TemplateRequestTypeEnum> _$templateRequestTypeEnumValues =
    BuiltSet<TemplateRequestTypeEnum>(const <TemplateRequestTypeEnum>[
  _$templateRequestTypeEnum_empty,
  _$templateRequestTypeEnum_build,
  _$templateRequestTypeEnum_deploy,
]);

Serializer<TemplateRequestTypeEnum> _$templateRequestTypeEnumSerializer =
    _$TemplateRequestTypeEnumSerializer();

class _$TemplateRequestTypeEnumSerializer
    implements PrimitiveSerializer<TemplateRequestTypeEnum> {
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
  final Iterable<Type> types = const <Type>[TemplateRequestTypeEnum];
  @override
  final String wireName = 'TemplateRequestTypeEnum';

  @override
  Object serialize(Serializers serializers, TemplateRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TemplateRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TemplateRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TemplateRequest extends TemplateRequest {
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
  final BuiltList<TemplateVault>? vaults;
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
  final String? limit;
  @override
  final bool? suppressSuccessAlerts;
  @override
  final String? app;
  @override
  final String? gitBranch;
  @override
  final BuiltList<TemplateSurveyVar>? surveyVars;
  @override
  final TemplateRequestTypeEnum? type;
  @override
  final String? startVersion;
  @override
  final int? buildTemplateId;
  @override
  final bool? autorun;

  factory _$TemplateRequest([void Function(TemplateRequestBuilder)? updates]) =>
      (TemplateRequestBuilder()..update(updates))._build();

  _$TemplateRequest._(
      {this.id,
      this.projectId,
      this.inventoryId,
      this.repositoryId,
      this.environmentId,
      this.viewId,
      this.vaults,
      this.name,
      this.playbook,
      this.arguments,
      this.description,
      this.allowOverrideArgsInTask,
      this.limit,
      this.suppressSuccessAlerts,
      this.app,
      this.gitBranch,
      this.surveyVars,
      this.type,
      this.startVersion,
      this.buildTemplateId,
      this.autorun})
      : super._();
  @override
  TemplateRequest rebuild(void Function(TemplateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateRequestBuilder toBuilder() => TemplateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateRequest &&
        id == other.id &&
        projectId == other.projectId &&
        inventoryId == other.inventoryId &&
        repositoryId == other.repositoryId &&
        environmentId == other.environmentId &&
        viewId == other.viewId &&
        vaults == other.vaults &&
        name == other.name &&
        playbook == other.playbook &&
        arguments == other.arguments &&
        description == other.description &&
        allowOverrideArgsInTask == other.allowOverrideArgsInTask &&
        limit == other.limit &&
        suppressSuccessAlerts == other.suppressSuccessAlerts &&
        app == other.app &&
        gitBranch == other.gitBranch &&
        surveyVars == other.surveyVars &&
        type == other.type &&
        startVersion == other.startVersion &&
        buildTemplateId == other.buildTemplateId &&
        autorun == other.autorun;
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
    _$hash = $jc(_$hash, vaults.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, playbook.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, allowOverrideArgsInTask.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, suppressSuccessAlerts.hashCode);
    _$hash = $jc(_$hash, app.hashCode);
    _$hash = $jc(_$hash, gitBranch.hashCode);
    _$hash = $jc(_$hash, surveyVars.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startVersion.hashCode);
    _$hash = $jc(_$hash, buildTemplateId.hashCode);
    _$hash = $jc(_$hash, autorun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplateRequest')
          ..add('id', id)
          ..add('projectId', projectId)
          ..add('inventoryId', inventoryId)
          ..add('repositoryId', repositoryId)
          ..add('environmentId', environmentId)
          ..add('viewId', viewId)
          ..add('vaults', vaults)
          ..add('name', name)
          ..add('playbook', playbook)
          ..add('arguments', arguments)
          ..add('description', description)
          ..add('allowOverrideArgsInTask', allowOverrideArgsInTask)
          ..add('limit', limit)
          ..add('suppressSuccessAlerts', suppressSuccessAlerts)
          ..add('app', app)
          ..add('gitBranch', gitBranch)
          ..add('surveyVars', surveyVars)
          ..add('type', type)
          ..add('startVersion', startVersion)
          ..add('buildTemplateId', buildTemplateId)
          ..add('autorun', autorun))
        .toString();
  }
}

class TemplateRequestBuilder
    implements Builder<TemplateRequest, TemplateRequestBuilder> {
  _$TemplateRequest? _$v;

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

  ListBuilder<TemplateVault>? _vaults;
  ListBuilder<TemplateVault> get vaults =>
      _$this._vaults ??= ListBuilder<TemplateVault>();
  set vaults(ListBuilder<TemplateVault>? vaults) => _$this._vaults = vaults;

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

  String? _limit;
  String? get limit => _$this._limit;
  set limit(String? limit) => _$this._limit = limit;

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

  ListBuilder<TemplateSurveyVar>? _surveyVars;
  ListBuilder<TemplateSurveyVar> get surveyVars =>
      _$this._surveyVars ??= ListBuilder<TemplateSurveyVar>();
  set surveyVars(ListBuilder<TemplateSurveyVar>? surveyVars) =>
      _$this._surveyVars = surveyVars;

  TemplateRequestTypeEnum? _type;
  TemplateRequestTypeEnum? get type => _$this._type;
  set type(TemplateRequestTypeEnum? type) => _$this._type = type;

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

  TemplateRequestBuilder() {
    TemplateRequest._defaults(this);
  }

  TemplateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _projectId = $v.projectId;
      _inventoryId = $v.inventoryId;
      _repositoryId = $v.repositoryId;
      _environmentId = $v.environmentId;
      _viewId = $v.viewId;
      _vaults = $v.vaults?.toBuilder();
      _name = $v.name;
      _playbook = $v.playbook;
      _arguments = $v.arguments;
      _description = $v.description;
      _allowOverrideArgsInTask = $v.allowOverrideArgsInTask;
      _limit = $v.limit;
      _suppressSuccessAlerts = $v.suppressSuccessAlerts;
      _app = $v.app;
      _gitBranch = $v.gitBranch;
      _surveyVars = $v.surveyVars?.toBuilder();
      _type = $v.type;
      _startVersion = $v.startVersion;
      _buildTemplateId = $v.buildTemplateId;
      _autorun = $v.autorun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateRequest other) {
    _$v = other as _$TemplateRequest;
  }

  @override
  void update(void Function(TemplateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateRequest build() => _build();

  _$TemplateRequest _build() {
    _$TemplateRequest _$result;
    try {
      _$result = _$v ??
          _$TemplateRequest._(
            id: id,
            projectId: projectId,
            inventoryId: inventoryId,
            repositoryId: repositoryId,
            environmentId: environmentId,
            viewId: viewId,
            vaults: _vaults?.build(),
            name: name,
            playbook: playbook,
            arguments: arguments,
            description: description,
            allowOverrideArgsInTask: allowOverrideArgsInTask,
            limit: limit,
            suppressSuccessAlerts: suppressSuccessAlerts,
            app: app,
            gitBranch: gitBranch,
            surveyVars: _surveyVars?.build(),
            type: type,
            startVersion: startVersion,
            buildTemplateId: buildTemplateId,
            autorun: autorun,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaults';
        _vaults?.build();

        _$failedField = 'surveyVars';
        _surveyVars?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TemplateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
