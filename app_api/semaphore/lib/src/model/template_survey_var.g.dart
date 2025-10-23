// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_survey_var.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TemplateSurveyVarTypeEnum _$templateSurveyVarTypeEnum_empty =
    const TemplateSurveyVarTypeEnum._('empty');
const TemplateSurveyVarTypeEnum _$templateSurveyVarTypeEnum_int_ =
    const TemplateSurveyVarTypeEnum._('int_');
const TemplateSurveyVarTypeEnum _$templateSurveyVarTypeEnum_enum_ =
    const TemplateSurveyVarTypeEnum._('enum_');
const TemplateSurveyVarTypeEnum _$templateSurveyVarTypeEnum_secret =
    const TemplateSurveyVarTypeEnum._('secret');

TemplateSurveyVarTypeEnum _$templateSurveyVarTypeEnumValueOf(String name) {
  switch (name) {
    case 'empty':
      return _$templateSurveyVarTypeEnum_empty;
    case 'int_':
      return _$templateSurveyVarTypeEnum_int_;
    case 'enum_':
      return _$templateSurveyVarTypeEnum_enum_;
    case 'secret':
      return _$templateSurveyVarTypeEnum_secret;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TemplateSurveyVarTypeEnum> _$templateSurveyVarTypeEnumValues =
    BuiltSet<TemplateSurveyVarTypeEnum>(const <TemplateSurveyVarTypeEnum>[
  _$templateSurveyVarTypeEnum_empty,
  _$templateSurveyVarTypeEnum_int_,
  _$templateSurveyVarTypeEnum_enum_,
  _$templateSurveyVarTypeEnum_secret,
]);

Serializer<TemplateSurveyVarTypeEnum> _$templateSurveyVarTypeEnumSerializer =
    _$TemplateSurveyVarTypeEnumSerializer();

class _$TemplateSurveyVarTypeEnumSerializer
    implements PrimitiveSerializer<TemplateSurveyVarTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'empty': '',
    'int_': 'int',
    'enum_': 'enum',
    'secret': 'secret',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '': 'empty',
    'int': 'int_',
    'enum': 'enum_',
    'secret': 'secret',
  };

  @override
  final Iterable<Type> types = const <Type>[TemplateSurveyVarTypeEnum];
  @override
  final String wireName = 'TemplateSurveyVarTypeEnum';

  @override
  Object serialize(Serializers serializers, TemplateSurveyVarTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TemplateSurveyVarTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TemplateSurveyVarTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TemplateSurveyVar extends TemplateSurveyVar {
  @override
  final String? name;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final TemplateSurveyVarTypeEnum? type;
  @override
  final bool? required_;
  @override
  final BuiltList<TemplateSurveyVarValue>? values;

  factory _$TemplateSurveyVar(
          [void Function(TemplateSurveyVarBuilder)? updates]) =>
      (TemplateSurveyVarBuilder()..update(updates))._build();

  _$TemplateSurveyVar._(
      {this.name,
      this.title,
      this.description,
      this.type,
      this.required_,
      this.values})
      : super._();
  @override
  TemplateSurveyVar rebuild(void Function(TemplateSurveyVarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateSurveyVarBuilder toBuilder() =>
      TemplateSurveyVarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateSurveyVar &&
        name == other.name &&
        title == other.title &&
        description == other.description &&
        type == other.type &&
        required_ == other.required_ &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplateSurveyVar')
          ..add('name', name)
          ..add('title', title)
          ..add('description', description)
          ..add('type', type)
          ..add('required_', required_)
          ..add('values', values))
        .toString();
  }
}

class TemplateSurveyVarBuilder
    implements Builder<TemplateSurveyVar, TemplateSurveyVarBuilder> {
  _$TemplateSurveyVar? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  TemplateSurveyVarTypeEnum? _type;
  TemplateSurveyVarTypeEnum? get type => _$this._type;
  set type(TemplateSurveyVarTypeEnum? type) => _$this._type = type;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  ListBuilder<TemplateSurveyVarValue>? _values;
  ListBuilder<TemplateSurveyVarValue> get values =>
      _$this._values ??= ListBuilder<TemplateSurveyVarValue>();
  set values(ListBuilder<TemplateSurveyVarValue>? values) =>
      _$this._values = values;

  TemplateSurveyVarBuilder() {
    TemplateSurveyVar._defaults(this);
  }

  TemplateSurveyVarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _title = $v.title;
      _description = $v.description;
      _type = $v.type;
      _required_ = $v.required_;
      _values = $v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateSurveyVar other) {
    _$v = other as _$TemplateSurveyVar;
  }

  @override
  void update(void Function(TemplateSurveyVarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateSurveyVar build() => _build();

  _$TemplateSurveyVar _build() {
    _$TemplateSurveyVar _$result;
    try {
      _$result = _$v ??
          _$TemplateSurveyVar._(
            name: name,
            title: title,
            description: description,
            type: type,
            required_: required_,
            values: _values?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TemplateSurveyVar', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
