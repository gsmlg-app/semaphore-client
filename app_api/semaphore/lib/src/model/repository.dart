//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository.g.dart';

/// Repository
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [projectId] 
/// * [gitUrl] 
/// * [gitBranch] 
/// * [sshKeyId] 
@BuiltValue()
abstract class Repository implements Built<Repository, RepositoryBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'git_url')
  String? get gitUrl;

  @BuiltValueField(wireName: r'git_branch')
  String? get gitBranch;

  @BuiltValueField(wireName: r'ssh_key_id')
  int? get sshKeyId;

  Repository._();

  factory Repository([void updates(RepositoryBuilder b)]) = _$Repository;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RepositoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Repository> get serializer => _$RepositorySerializer();
}

class _$RepositorySerializer implements PrimitiveSerializer<Repository> {
  @override
  final Iterable<Type> types = const [Repository, _$Repository];

  @override
  final String wireName = r'Repository';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Repository object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectId != null) {
      yield r'project_id';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(int),
      );
    }
    if (object.gitUrl != null) {
      yield r'git_url';
      yield serializers.serialize(
        object.gitUrl,
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
    if (object.sshKeyId != null) {
      yield r'ssh_key_id';
      yield serializers.serialize(
        object.sshKeyId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Repository object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RepositoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        case r'git_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitUrl = valueDes;
          break;
        case r'git_branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitBranch = valueDes;
          break;
        case r'ssh_key_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sshKeyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Repository deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RepositoryBuilder();
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

