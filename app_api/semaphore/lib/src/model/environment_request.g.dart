// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnvironmentRequest extends EnvironmentRequest {
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
  final BuiltList<EnvironmentSecretRequest>? secrets;

  factory _$EnvironmentRequest(
          [void Function(EnvironmentRequestBuilder)? updates]) =>
      (EnvironmentRequestBuilder()..update(updates))._build();

  _$EnvironmentRequest._(
      {this.id,
      this.name,
      this.projectId,
      this.password,
      this.json,
      this.env,
      this.secrets})
      : super._();
  @override
  EnvironmentRequest rebuild(
          void Function(EnvironmentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentRequestBuilder toBuilder() =>
      EnvironmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnvironmentRequest &&
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
    return (newBuiltValueToStringHelper(r'EnvironmentRequest')
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

class EnvironmentRequestBuilder
    implements Builder<EnvironmentRequest, EnvironmentRequestBuilder> {
  _$EnvironmentRequest? _$v;

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

  ListBuilder<EnvironmentSecretRequest>? _secrets;
  ListBuilder<EnvironmentSecretRequest> get secrets =>
      _$this._secrets ??= ListBuilder<EnvironmentSecretRequest>();
  set secrets(ListBuilder<EnvironmentSecretRequest>? secrets) =>
      _$this._secrets = secrets;

  EnvironmentRequestBuilder() {
    EnvironmentRequest._defaults(this);
  }

  EnvironmentRequestBuilder get _$this {
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
  void replace(EnvironmentRequest other) {
    _$v = other as _$EnvironmentRequest;
  }

  @override
  void update(void Function(EnvironmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnvironmentRequest build() => _build();

  _$EnvironmentRequest _build() {
    _$EnvironmentRequest _$result;
    try {
      _$result = _$v ??
          _$EnvironmentRequest._(
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
            r'EnvironmentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
