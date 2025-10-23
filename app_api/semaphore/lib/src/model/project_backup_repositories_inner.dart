//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup_repositories_inner.g.dart';

/// ProjectBackupRepositoriesInner
///
/// Properties:
/// * [name] 
/// * [gitUrl] 
/// * [gitBranch] 
/// * [sshKey] 
@BuiltValue()
abstract class ProjectBackupRepositoriesInner implements Built<ProjectBackupRepositoriesInner, ProjectBackupRepositoriesInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'git_url')
  String? get gitUrl;

  @BuiltValueField(wireName: r'git_branch')
  String? get gitBranch;

  @BuiltValueField(wireName: r'ssh_key')
  String? get sshKey;

  ProjectBackupRepositoriesInner._();

  factory ProjectBackupRepositoriesInner([void updates(ProjectBackupRepositoriesInnerBuilder b)]) = _$ProjectBackupRepositoriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupRepositoriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackupRepositoriesInner> get serializer => _$ProjectBackupRepositoriesInnerSerializer();
}

class _$ProjectBackupRepositoriesInnerSerializer implements PrimitiveSerializer<ProjectBackupRepositoriesInner> {
  @override
  final Iterable<Type> types = const [ProjectBackupRepositoriesInner, _$ProjectBackupRepositoriesInner];

  @override
  final String wireName = r'ProjectBackupRepositoriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackupRepositoriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
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
    if (object.sshKey != null) {
      yield r'ssh_key';
      yield serializers.serialize(
        object.sshKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackupRepositoriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupRepositoriesInnerBuilder result,
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
        case r'ssh_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sshKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBackupRepositoriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupRepositoriesInnerBuilder();
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

