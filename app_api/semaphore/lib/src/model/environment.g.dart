// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Environment extends Environment {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? projectId;
  @override
  final String? password;
  @override
  final String? json;
  @override
  final String? env;
  @override
  final BuiltList<EnvironmentSecret>? secrets;

  factory _$Environment([void Function(EnvironmentBuilder)? updates]) =>
      (EnvironmentBuilder()..update(updates))._build();

  _$Environment._(
      {this.id,
      this.name,
      this.projectId,
      this.password,
      this.json,
      this.env,
      this.secrets})
      : super._();
  @override
  Environment rebuild(void Function(EnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentBuilder toBuilder() => EnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Environment &&
        id == other.id &&
        name == other.name &&
        projectId == other.projectId &&
        password == other.password &&
        json == other.json &&
        env == other.env &&
        secrets == other.secrets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, json.hashCode);
    _$hash = $jc(_$hash, env.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Environment')
          ..add('id', id)
          ..add('name', name)
          ..add('projectId', projectId)
          ..add('password', password)
          ..add('json', json)
          ..add('env', env)
          ..add('secrets', secrets))
        .toString();
  }
}

class EnvironmentBuilder implements Builder<Environment, EnvironmentBuilder> {
  _$Environment? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _json;
  String? get json => _$this._json;
  set json(String? json) => _$this._json = json;

  String? _env;
  String? get env => _$this._env;
  set env(String? env) => _$this._env = env;

  ListBuilder<EnvironmentSecret>? _secrets;
  ListBuilder<EnvironmentSecret> get secrets =>
      _$this._secrets ??= ListBuilder<EnvironmentSecret>();
  set secrets(ListBuilder<EnvironmentSecret>? secrets) =>
      _$this._secrets = secrets;

  EnvironmentBuilder() {
    Environment._defaults(this);
  }

  EnvironmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _projectId = $v.projectId;
      _password = $v.password;
      _json = $v.json;
      _env = $v.env;
      _secrets = $v.secrets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Environment other) {
    _$v = other as _$Environment;
  }

  @override
  void update(void Function(EnvironmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Environment build() => _build();

  _$Environment _build() {
    _$Environment _$result;
    try {
      _$result = _$v ??
          _$Environment._(
            id: id,
            name: name,
            projectId: projectId,
            password: password,
            json: json,
            env: env,
            secrets: _secrets?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'secrets';
        _secrets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Environment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
