//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:semaphore_api/src/model/project_backup_inventories_inner.dart';
import 'package:semaphore_api/src/model/project_backup_meta.dart';
import 'package:semaphore_api/src/model/project_backup_templates_inner.dart';
import 'package:semaphore_api/src/model/project_backup_keys_inner.dart';
import 'package:semaphore_api/src/model/project_backup_repositories_inner.dart';
import 'package:semaphore_api/src/model/project_backup_environments_inner.dart';
import 'package:semaphore_api/src/model/project_backup_views_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup.g.dart';

/// ProjectBackup
///
/// Properties:
/// * [meta] 
/// * [templates] 
/// * [repositories] 
/// * [keys] 
/// * [views] 
/// * [inventories] 
/// * [environments] 
@BuiltValue()
abstract class ProjectBackup implements Built<ProjectBackup, ProjectBackupBuilder> {
  @BuiltValueField(wireName: r'meta')
  ProjectBackupMeta? get meta;

  @BuiltValueField(wireName: r'templates')
  BuiltList<ProjectBackupTemplatesInner>? get templates;

  @BuiltValueField(wireName: r'repositories')
  BuiltList<ProjectBackupRepositoriesInner>? get repositories;

  @BuiltValueField(wireName: r'keys')
  BuiltList<ProjectBackupKeysInner>? get keys;

  @BuiltValueField(wireName: r'views')
  BuiltList<ProjectBackupViewsInner>? get views;

  @BuiltValueField(wireName: r'inventories')
  BuiltList<ProjectBackupInventoriesInner>? get inventories;

  @BuiltValueField(wireName: r'environments')
  BuiltList<ProjectBackupEnvironmentsInner>? get environments;

  ProjectBackup._();

  factory ProjectBackup([void updates(ProjectBackupBuilder b)]) = _$ProjectBackup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackup> get serializer => _$ProjectBackupSerializer();
}

class _$ProjectBackupSerializer implements PrimitiveSerializer<ProjectBackup> {
  @override
  final Iterable<Type> types = const [ProjectBackup, _$ProjectBackup];

  @override
  final String wireName = r'ProjectBackup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(ProjectBackupMeta),
      );
    }
    if (object.templates != null) {
      yield r'templates';
      yield serializers.serialize(
        object.templates,
        specifiedType: const FullType(BuiltList, [FullType(ProjectBackupTemplatesInner)]),
      );
    }
    if (object.repositories != null) {
      yield r'repositories';
      yield serializers.serialize(
        object.repositories,
        specifiedType: const FullType(BuiltList, [FullType(ProjectBackupRepositoriesInner)]),
      );
    }
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltList, [FullType(ProjectBackupKeysInner)]),
      );
    }
    if (object.views != null) {
      yield r'views';
      yield serializers.serialize(
        object.views,
        specifiedType: const FullType(BuiltList, [FullType(ProjectBackupViewsInner)]),
      );
    }
    if (object.inventories != null) {
      yield r'inventories';
      yield serializers.serialize(
        object.inventories,
        specifiedType: const FullType(BuiltList, [FullType(ProjectBackupInventoriesInner)]),
      );
    }
    if (object.environments != null) {
      yield r'environments';
      yield serializers.serialize(
        object.environments,
        specifiedType: const FullType(BuiltList, [FullType(ProjectBackupEnvironmentsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectBackupMeta),
          ) as ProjectBackupMeta;
          result.meta.replace(valueDes);
          break;
        case r'templates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectBackupTemplatesInner)]),
          ) as BuiltList<ProjectBackupTemplatesInner>;
          result.templates.replace(valueDes);
          break;
        case r'repositories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectBackupRepositoriesInner)]),
          ) as BuiltList<ProjectBackupRepositoriesInner>;
          result.repositories.replace(valueDes);
          break;
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectBackupKeysInner)]),
          ) as BuiltList<ProjectBackupKeysInner>;
          result.keys.replace(valueDes);
          break;
        case r'views':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectBackupViewsInner)]),
          ) as BuiltList<ProjectBackupViewsInner>;
          result.views.replace(valueDes);
          break;
        case r'inventories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectBackupInventoriesInner)]),
          ) as BuiltList<ProjectBackupInventoriesInner>;
          result.inventories.replace(valueDes);
          break;
        case r'environments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectBackupEnvironmentsInner)]),
          ) as BuiltList<ProjectBackupEnvironmentsInner>;
          result.environments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBackup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupBuilder();
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

