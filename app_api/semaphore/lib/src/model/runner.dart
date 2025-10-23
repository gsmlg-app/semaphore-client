//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runner.g.dart';

/// Runner
///
/// Properties:
/// * [token] 
@BuiltValue()
abstract class Runner implements Built<Runner, RunnerBuilder> {
  @BuiltValueField(wireName: r'token')
  String? get token;

  Runner._();

  factory Runner([void updates(RunnerBuilder b)]) = _$Runner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RunnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Runner> get serializer => _$RunnerSerializer();
}

class _$RunnerSerializer implements PrimitiveSerializer<Runner> {
  @override
  final Iterable<Type> types = const [Runner, _$Runner];

  @override
  final String wireName = r'Runner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Runner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Runner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RunnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Runner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunnerBuilder();
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

