//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/template_survey_var_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_survey_var.g.dart';

/// TemplateSurveyVar
///
/// Properties:
/// * [name] 
/// * [title] 
/// * [description] 
/// * [type] 
/// * [required_] 
/// * [values] 
@BuiltValue()
abstract class TemplateSurveyVar implements Built<TemplateSurveyVar, TemplateSurveyVarBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'type')
  TemplateSurveyVarTypeEnum? get type;
  // enum typeEnum {  ,  int,  enum,  secret,  };

  @BuiltValueField(wireName: r'required')
  bool? get required_;

  @BuiltValueField(wireName: r'values')
  BuiltList<TemplateSurveyVarValue>? get values;

  TemplateSurveyVar._();

  factory TemplateSurveyVar([void updates(TemplateSurveyVarBuilder b)]) = _$TemplateSurveyVar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateSurveyVarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateSurveyVar> get serializer => _$TemplateSurveyVarSerializer();
}

class _$TemplateSurveyVarSerializer implements PrimitiveSerializer<TemplateSurveyVar> {
  @override
  final Iterable<Type> types = const [TemplateSurveyVar, _$TemplateSurveyVar];

  @override
  final String wireName = r'TemplateSurveyVar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateSurveyVar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TemplateSurveyVarTypeEnum),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.values != null) {
      yield r'values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType(BuiltList, [FullType(TemplateSurveyVarValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateSurveyVar object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateSurveyVarBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TemplateSurveyVarTypeEnum),
          ) as TemplateSurveyVarTypeEnum;
          result.type = valueDes;
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.required_ = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TemplateSurveyVarValue)]),
          ) as BuiltList<TemplateSurveyVarValue>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateSurveyVar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateSurveyVarBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class TemplateSurveyVarTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'')
  static const TemplateSurveyVarTypeEnum empty = _$templateSurveyVarTypeEnum_empty;
  @BuiltValueEnumConst(wireName: r'int')
  static const TemplateSurveyVarTypeEnum int_ = _$templateSurveyVarTypeEnum_int_;
  @BuiltValueEnumConst(wireName: r'enum')
  static const TemplateSurveyVarTypeEnum enum_ = _$templateSurveyVarTypeEnum_enum_;
  @BuiltValueEnumConst(wireName: r'secret')
  static const TemplateSurveyVarTypeEnum secret = _$templateSurveyVarTypeEnum_secret;

  static Serializer<TemplateSurveyVarTypeEnum> get serializer => _$templateSurveyVarTypeEnumSerializer;

  const TemplateSurveyVarTypeEnum._(String name): super(name);

  static BuiltSet<TemplateSurveyVarTypeEnum> get values => _$templateSurveyVarTypeEnumValues;
  static TemplateSurveyVarTypeEnum valueOf(String name) => _$templateSurveyVarTypeEnumValueOf(name);
}

