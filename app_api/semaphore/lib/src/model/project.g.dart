// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Project extends Project {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? created;
  @override
  final bool? alert;
  @override
  final String? alertChat;
  @override
  final int? maxParallelTasks;
  @override
  final String? type;

  factory _$Project([void Function(ProjectBuilder)? updates]) =>
      (ProjectBuilder()..update(updates))._build();

  _$Project._(
      {this.id,
      this.name,
      this.created,
      this.alert,
      this.alertChat,
      this.maxParallelTasks,
      this.type})
      : super._();
  @override
  Project rebuild(void Function(ProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBuilder toBuilder() => ProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
        id == other.id &&
        name == other.name &&
        created == other.created &&
        alert == other.alert &&
        alertChat == other.alertChat &&
        maxParallelTasks == other.maxParallelTasks &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, alertChat.hashCode);
    _$hash = $jc(_$hash, maxParallelTasks.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Project')
          ..add('id', id)
          ..add('name', name)
          ..add('created', created)
          ..add('alert', alert)
          ..add('alertChat', alertChat)
          ..add('maxParallelTasks', maxParallelTasks)
          ..add('type', type))
        .toString();
  }
}

class ProjectBuilder implements Builder<Project, ProjectBuilder> {
  _$Project? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

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

  ProjectBuilder() {
    Project._defaults(this);
  }

  ProjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _created = $v.created;
      _alert = $v.alert;
      _alertChat = $v.alertChat;
      _maxParallelTasks = $v.maxParallelTasks;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Project other) {
    _$v = other as _$Project;
  }

  @override
  void update(void Function(ProjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Project build() => _build();

  _$Project _build() {
    final _$result = _$v ??
        _$Project._(
          id: id,
          name: name,
          created: created,
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
