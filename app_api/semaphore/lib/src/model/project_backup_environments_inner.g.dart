// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_environments_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectBackupEnvironmentsInner extends ProjectBackupEnvironmentsInner {
  @override
  final String? name;
  @override
  final String? password;
  @override
  final String? json;
  @override
  final String? env;

  factory _$ProjectBackupEnvironmentsInner(
          [void Function(ProjectBackupEnvironmentsInnerBuilder)? updates]) =>
      (ProjectBackupEnvironmentsInnerBuilder()..update(updates))._build();

  _$ProjectBackupEnvironmentsInner._(
      {this.name, this.password, this.json, this.env})
      : super._();
  @override
  ProjectBackupEnvironmentsInner rebuild(
          void Function(ProjectBackupEnvironmentsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupEnvironmentsInnerBuilder toBuilder() =>
      ProjectBackupEnvironmentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackupEnvironmentsInner &&
        name == other.name &&
        password == other.password &&
        json == other.json &&
        env == other.env;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, json.hashCode);
    _$hash = $jc(_$hash, env.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackupEnvironmentsInner')
          ..add('name', name)
          ..add('password', password)
          ..add('json', json)
          ..add('env', env))
        .toString();
  }
}

class ProjectBackupEnvironmentsInnerBuilder
    implements
        Builder<ProjectBackupEnvironmentsInner,
            ProjectBackupEnvironmentsInnerBuilder> {
  _$ProjectBackupEnvironmentsInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _json;
  String? get json => _$this._json;
  set json(String? json) => _$this._json = json;

  String? _env;
  String? get env => _$this._env;
  set env(String? env) => _$this._env = env;

  ProjectBackupEnvironmentsInnerBuilder() {
    ProjectBackupEnvironmentsInner._defaults(this);
  }

  ProjectBackupEnvironmentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _password = $v.password;
      _json = $v.json;
      _env = $v.env;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackupEnvironmentsInner other) {
    _$v = other as _$ProjectBackupEnvironmentsInner;
  }

  @override
  void update(void Function(ProjectBackupEnvironmentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackupEnvironmentsInner build() => _build();

  _$ProjectBackupEnvironmentsInner _build() {
    final _$result = _$v ??
        _$ProjectBackupEnvironmentsInner._(
          name: name,
          password: password,
          json: json,
          env: env,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
