// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectProjectIdPutRequest extends ProjectProjectIdPutRequest {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? alert;
  @override
  final String? alertChat;
  @override
  final int? maxParallelTasks;
  @override
  final String? type;
  @override
  final bool? demo;

  factory _$ProjectProjectIdPutRequest(
          [void Function(ProjectProjectIdPutRequestBuilder)? updates]) =>
      (ProjectProjectIdPutRequestBuilder()..update(updates))._build();

  _$ProjectProjectIdPutRequest._(
      {this.id,
      this.name,
      this.alert,
      this.alertChat,
      this.maxParallelTasks,
      this.type,
      this.demo})
      : super._();
  @override
  ProjectProjectIdPutRequest rebuild(
          void Function(ProjectProjectIdPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectProjectIdPutRequestBuilder toBuilder() =>
      ProjectProjectIdPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectProjectIdPutRequest &&
        id == other.id &&
        name == other.name &&
        alert == other.alert &&
        alertChat == other.alertChat &&
        maxParallelTasks == other.maxParallelTasks &&
        type == other.type &&
        demo == other.demo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, alertChat.hashCode);
    _$hash = $jc(_$hash, maxParallelTasks.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, demo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectProjectIdPutRequest')
          ..add('id', id)
          ..add('name', name)
          ..add('alert', alert)
          ..add('alertChat', alertChat)
          ..add('maxParallelTasks', maxParallelTasks)
          ..add('type', type)
          ..add('demo', demo))
        .toString();
  }
}

class ProjectProjectIdPutRequestBuilder
    implements
        Builder<ProjectProjectIdPutRequest, ProjectProjectIdPutRequestBuilder>,
        ProjectRequestBuilder {
  _$ProjectProjectIdPutRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(covariant int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  bool? _alert;
  bool? get alert => _$this._alert;
  set alert(covariant bool? alert) => _$this._alert = alert;

  String? _alertChat;
  String? get alertChat => _$this._alertChat;
  set alertChat(covariant String? alertChat) => _$this._alertChat = alertChat;

  int? _maxParallelTasks;
  int? get maxParallelTasks => _$this._maxParallelTasks;
  set maxParallelTasks(covariant int? maxParallelTasks) =>
      _$this._maxParallelTasks = maxParallelTasks;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  bool? _demo;
  bool? get demo => _$this._demo;
  set demo(covariant bool? demo) => _$this._demo = demo;

  ProjectProjectIdPutRequestBuilder() {
    ProjectProjectIdPutRequest._defaults(this);
  }

  ProjectProjectIdPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _alert = $v.alert;
      _alertChat = $v.alertChat;
      _maxParallelTasks = $v.maxParallelTasks;
      _type = $v.type;
      _demo = $v.demo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ProjectProjectIdPutRequest other) {
    _$v = other as _$ProjectProjectIdPutRequest;
  }

  @override
  void update(void Function(ProjectProjectIdPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectProjectIdPutRequest build() => _build();

  _$ProjectProjectIdPutRequest _build() {
    final _$result = _$v ??
        _$ProjectProjectIdPutRequest._(
          id: id,
          name: name,
          alert: alert,
          alertChat: alertChat,
          maxParallelTasks: maxParallelTasks,
          type: type,
          demo: demo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
