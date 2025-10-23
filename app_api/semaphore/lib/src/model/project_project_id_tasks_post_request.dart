//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_project_id_tasks_post_request.g.dart';

/// ProjectProjectIdTasksPostRequest
///
/// Properties:
/// * [templateId] 
/// * [debug] 
/// * [dryRun] 
/// * [diff] 
/// * [playbook] 
/// * [environment] 
/// * [limit] 
/// * [gitBranch] 
/// * [message] 
/// * [arguments] 
/// * [inventoryId] 
@BuiltValue()
abstract class ProjectProjectIdTasksPostRequest implements Built<ProjectProjectIdTasksPostRequest, ProjectProjectIdTasksPostRequestBuilder> {
  @BuiltValueField(wireName: r'template_id')
  int? get templateId;

  @BuiltValueField(wireName: r'debug')
  bool? get debug;

  @BuiltValueField(wireName: r'dry_run')
  bool? get dryRun;

  @BuiltValueField(wireName: r'diff')
  bool? get diff;

  @BuiltValueField(wireName: r'playbook')
  String? get playbook;

  @BuiltValueField(wireName: r'environment')
  String? get environment;

  @BuiltValueField(wireName: r'limit')
  String? get limit;

  @BuiltValueField(wireName: r'git_branch')
  String? get gitBranch;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'arguments')
  String? get arguments;

  @BuiltValueField(wireName: r'inventory_id')
  int? get inventoryId;

  ProjectProjectIdTasksPostRequest._();

  factory ProjectProjectIdTasksPostRequest([void updates(ProjectProjectIdTasksPostRequestBuilder b)]) = _$ProjectProjectIdTasksPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectProjectIdTasksPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectProjectIdTasksPostRequest> get serializer => _$ProjectProjectIdTasksPostRequestSerializer();
}

class _$ProjectProjectIdTasksPostRequestSerializer implements PrimitiveSerializer<ProjectProjectIdTasksPostRequest> {
  @override
  final Iterable<Type> types = const [ProjectProjectIdTasksPostRequest, _$ProjectProjectIdTasksPostRequest];

  @override
  final String wireName = r'ProjectProjectIdTasksPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectProjectIdTasksPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.templateId != null) {
      yield r'template_id';
      yield serializers.serialize(
        object.templateId,
        specifiedType: const FullType(int),
      );
    }
    if (object.debug != null) {
      yield r'debug';
      yield serializers.serialize(
        object.debug,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dryRun != null) {
      yield r'dry_run';
      yield serializers.serialize(
        object.dryRun,
        specifiedType: const FullType(bool),
      );
    }
    if (object.diff != null) {
      yield r'diff';
      yield serializers.serialize(
        object.diff,
        specifiedType: const FullType(bool),
      );
    }
    if (object.playbook != null) {
      yield r'playbook';
      yield serializers.serialize(
        object.playbook,
        specifiedType: const FullType(String),
      );
    }
    if (object.environment != null) {
      yield r'environment';
      yield serializers.serialize(
        object.environment,
        specifiedType: const FullType(String),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(String),
      );
    }
    if (object.gitBranch != null) {
      yield r'git_branch';
      yield serializers.serialize(
        object.gitBranch,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.arguments != null) {
      yield r'arguments';
      yield serializers.serialize(
        object.arguments,
        specifiedType: const FullType(String),
      );
    }
    if (object.inventoryId != null) {
      yield r'inventory_id';
      yield serializers.serialize(
        object.inventoryId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectProjectIdTasksPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectProjectIdTasksPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'template_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.templateId = valueDes;
          break;
        case r'debug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.debug = valueDes;
          break;
        case r'dry_run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dryRun = valueDes;
          break;
        case r'diff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.diff = valueDes;
          break;
        case r'playbook':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.playbook = valueDes;
          break;
        case r'environment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.environment = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.limit = valueDes;
          break;
        case r'git_branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitBranch = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'arguments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.arguments = valueDes;
          break;
        case r'inventory_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inventoryId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectProjectIdTasksPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectProjectIdTasksPostRequestBuilder();
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

