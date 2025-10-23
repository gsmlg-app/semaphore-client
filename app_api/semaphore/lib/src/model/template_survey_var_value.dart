//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_survey_var_value.g.dart';

/// TemplateSurveyVarValue
///
/// Properties:
/// * [name] 
/// * [value] 
@BuiltValue()
abstract class TemplateSurveyVarValue implements Built<TemplateSurveyVarValue, TemplateSurveyVarValueBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'value')
  String? get value;

  TemplateSurveyVarValue._();

  factory TemplateSurveyVarValue([void updates(TemplateSurveyVarValueBuilder b)]) = _$TemplateSurveyVarValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateSurveyVarValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateSurveyVarValue> get serializer => _$TemplateSurveyVarValueSerializer();
}

class _$TemplateSurveyVarValueSerializer implements PrimitiveSerializer<TemplateSurveyVarValue> {
  @override
  final Iterable<Type> types = const [TemplateSurveyVarValue, _$TemplateSurveyVarValue];

  @override
  final String wireName = r'TemplateSurveyVarValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateSurveyVarValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateSurveyVarValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateSurveyVarValueBuilder result,
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
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateSurveyVarValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateSurveyVarValueBuilder();
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

