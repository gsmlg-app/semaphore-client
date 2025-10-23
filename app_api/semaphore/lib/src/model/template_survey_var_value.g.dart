// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_survey_var_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemplateSurveyVarValue extends TemplateSurveyVarValue {
  @override
  final String? name;
  @override
  final String? value;

  factory _$TemplateSurveyVarValue(
          [void Function(TemplateSurveyVarValueBuilder)? updates]) =>
      (TemplateSurveyVarValueBuilder()..update(updates))._build();

  _$TemplateSurveyVarValue._({this.name, this.value}) : super._();
  @override
  TemplateSurveyVarValue rebuild(
          void Function(TemplateSurveyVarValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateSurveyVarValueBuilder toBuilder() =>
      TemplateSurveyVarValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateSurveyVarValue &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplateSurveyVarValue')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class TemplateSurveyVarValueBuilder
    implements Builder<TemplateSurveyVarValue, TemplateSurveyVarValueBuilder> {
  _$TemplateSurveyVarValue? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  TemplateSurveyVarValueBuilder() {
    TemplateSurveyVarValue._defaults(this);
  }

  TemplateSurveyVarValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateSurveyVarValue other) {
    _$v = other as _$TemplateSurveyVarValue;
  }

  @override
  void update(void Function(TemplateSurveyVarValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateSurveyVarValue build() => _build();

  _$TemplateSurveyVarValue _build() {
    final _$result = _$v ??
        _$TemplateSurveyVarValue._(
          name: name,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
