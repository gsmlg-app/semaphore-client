//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_project_id_role_get200_response.g.dart';

/// ProjectProjectIdRoleGet200Response
///
/// Properties:
/// * [role] 
/// * [permissions] 
@BuiltValue()
abstract class ProjectProjectIdRoleGet200Response implements Built<ProjectProjectIdRoleGet200Response, ProjectProjectIdRoleGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'permissions')
  num? get permissions;

  ProjectProjectIdRoleGet200Response._();

  factory ProjectProjectIdRoleGet200Response([void updates(ProjectProjectIdRoleGet200ResponseBuilder b)]) = _$ProjectProjectIdRoleGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectProjectIdRoleGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectProjectIdRoleGet200Response> get serializer => _$ProjectProjectIdRoleGet200ResponseSerializer();
}

class _$ProjectProjectIdRoleGet200ResponseSerializer implements PrimitiveSerializer<ProjectProjectIdRoleGet200Response> {
  @override
  final Iterable<Type> types = const [ProjectProjectIdRoleGet200Response, _$ProjectProjectIdRoleGet200Response];

  @override
  final String wireName = r'ProjectProjectIdRoleGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectProjectIdRoleGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(String),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectProjectIdRoleGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectProjectIdRoleGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.permissions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectProjectIdRoleGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectProjectIdRoleGet200ResponseBuilder();
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

