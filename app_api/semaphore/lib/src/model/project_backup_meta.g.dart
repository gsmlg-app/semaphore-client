// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectBackupMeta extends ProjectBackupMeta {
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

  factory _$ProjectBackupMeta(
          [void Function(ProjectBackupMetaBuilder)? updates]) =>
      (ProjectBackupMetaBuilder()..update(updates))._build();

  _$ProjectBackupMeta._(
      {this.name, this.alert, this.alertChat, this.maxParallelTasks, this.type})
      : super._();
  @override
  ProjectBackupMeta rebuild(void Function(ProjectBackupMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupMetaBuilder toBuilder() =>
      ProjectBackupMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackupMeta &&
        name == other.name &&
        alert == other.alert &&
        alertChat == other.alertChat &&
        maxParallelTasks == other.maxParallelTasks &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, alertChat.hashCode);
    _$hash = $jc(_$hash, maxParallelTasks.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackupMeta')
          ..add('name', name)
          ..add('alert', alert)
          ..add('alertChat', alertChat)
          ..add('maxParallelTasks', maxParallelTasks)
          ..add('type', type))
        .toString();
  }
}

class ProjectBackupMetaBuilder
    implements Builder<ProjectBackupMeta, ProjectBackupMetaBuilder> {
  _$ProjectBackupMeta? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _alert;
  bool? get alert => _$this._alert;
  set alert(bool? alert) => _$this._alert = alert;

  String? _alertChat;
  String? get alertChat => _$this._alertChat;
  set alertChat(String? alertChat) => _$this._alertChat = alertChat;

  int? _maxParallelTasks;
  int? get maxParallelTasks => _$this._maxParallelTasks;
  set maxParallelTasks(int? maxParallelTasks) =>
      _$this._maxParallelTasks = maxParallelTasks;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ProjectBackupMetaBuilder() {
    ProjectBackupMeta._defaults(this);
  }

  ProjectBackupMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _alert = $v.alert;
      _alertChat = $v.alertChat;
      _maxParallelTasks = $v.maxParallelTasks;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackupMeta other) {
    _$v = other as _$ProjectBackupMeta;
  }

  @override
  void update(void Function(ProjectBackupMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackupMeta build() => _build();

  _$ProjectBackupMeta _build() {
    final _$result = _$v ??
        _$ProjectBackupMeta._(
          name: name,
          alert: alert,
          alertChat: alertChat,
          maxParallelTasks: maxParallelTasks,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
