// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationRequest extends IntegrationRequest {
  @override
  final String? name;
  @override
  final int? projectId;
  @override
  final int? templateId;
  @override
  final TaskPrams? params;

  factory _$IntegrationRequest(
          [void Function(IntegrationRequestBuilder)? updates]) =>
      (IntegrationRequestBuilder()..update(updates))._build();

  _$IntegrationRequest._(
      {this.name, this.projectId, this.templateId, this.params})
      : super._();
  @override
  IntegrationRequest rebuild(
          void Function(IntegrationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationRequestBuilder toBuilder() =>
      IntegrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationRequest &&
        name == other.name &&
        projectId == other.projectId &&
        templateId == other.templateId &&
        params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntegrationRequest')
          ..add('name', name)
          ..add('projectId', projectId)
          ..add('templateId', templateId)
          ..add('params', params))
        .toString();
  }
}

class IntegrationRequestBuilder
    implements Builder<IntegrationRequest, IntegrationRequestBuilder> {
  _$IntegrationRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  TaskPramsBuilder? _params;
  TaskPramsBuilder get params => _$this._params ??= TaskPramsBuilder();
  set params(TaskPramsBuilder? params) => _$this._params = params;

  IntegrationRequestBuilder() {
    IntegrationRequest._defaults(this);
  }

  IntegrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _projectId = $v.projectId;
      _templateId = $v.templateId;
      _params = $v.params?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrationRequest other) {
    _$v = other as _$IntegrationRequest;
  }

  @override
  void update(void Function(IntegrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationRequest build() => _build();

  _$IntegrationRequest _build() {
    _$IntegrationRequest _$result;
    try {
      _$result = _$v ??
          _$IntegrationRequest._(
            name: name,
            projectId: projectId,
            templateId: templateId,
            params: _params?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IntegrationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
