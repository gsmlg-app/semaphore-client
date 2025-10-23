//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup_templates_inner.g.dart';

/// ProjectBackupTemplatesInner
///
/// Properties:
/// * [inventory] 
/// * [repository] 
/// * [environment] 
/// * [view] 
/// * [name] 
/// * [playbook] 
/// * [arguments] 
/// * [description] 
/// * [allowOverrideArgsInTask] 
/// * [suppressSuccessAlerts] 
/// * [cron] 
/// * [buildTemplate] 
/// * [autorun] 
/// * [surveyVars] 
/// * [startVersion] 
/// * [type] 
/// * [vaultKey] 
/// * [allowOverrideBranchInTask] 
@BuiltValue()
abstract class ProjectBackupTemplatesInner implements Built<ProjectBackupTemplatesInner, ProjectBackupTemplatesInnerBuilder> {
  @BuiltValueField(wireName: r'inventory')
  String? get inventory;

  @BuiltValueField(wireName: r'repository')
  String? get repository;

  @BuiltValueField(wireName: r'environment')
  String? get environment;

  @BuiltValueField(wireName: r'view')
  String? get view;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'playbook')
  String? get playbook;

  @BuiltValueField(wireName: r'arguments')
  String? get arguments;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'allow_override_args_in_task')
  bool? get allowOverrideArgsInTask;

  @BuiltValueField(wireName: r'suppress_success_alerts')
  bool? get suppressSuccessAlerts;

  @BuiltValueField(wireName: r'cron')
  String? get cron;

  @BuiltValueField(wireName: r'build_template')
  String? get buildTemplate;

  @BuiltValueField(wireName: r'autorun')
  bool? get autorun;

  @BuiltValueField(wireName: r'survey_vars')
  String? get surveyVars;

  @BuiltValueField(wireName: r'start_version')
  String? get startVersion;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'vault_key')
  String? get vaultKey;

  @BuiltValueField(wireName: r'allow_override_branch_in_task')
  bool? get allowOverrideBranchInTask;

  ProjectBackupTemplatesInner._();

  factory ProjectBackupTemplatesInner([void updates(ProjectBackupTemplatesInnerBuilder b)]) = _$ProjectBackupTemplatesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupTemplatesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackupTemplatesInner> get serializer => _$ProjectBackupTemplatesInnerSerializer();
}

class _$ProjectBackupTemplatesInnerSerializer implements PrimitiveSerializer<ProjectBackupTemplatesInner> {
  @override
  final Iterable<Type> types = const [ProjectBackupTemplatesInner, _$ProjectBackupTemplatesInner];

  @override
  final String wireName = r'ProjectBackupTemplatesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackupTemplatesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.inventory != null) {
      yield r'inventory';
      yield serializers.serialize(
        object.inventory,
        specifiedType: const FullType(String),
      );
    }
    if (object.repository != null) {
      yield r'repository';
      yield serializers.serialize(
        object.repository,
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
    if (object.view != null) {
      yield r'view';
      yield serializers.serialize(
        object.view,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.playbook != null) {
      yield r'playbook';
      yield serializers.serialize(
        object.playbook,
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowOverrideArgsInTask != null) {
      yield r'allow_override_args_in_task';
      yield serializers.serialize(
        object.allowOverrideArgsInTask,
        specifiedType: const FullType(bool),
      );
    }
    if (object.suppressSuccessAlerts != null) {
      yield r'suppress_success_alerts';
      yield serializers.serialize(
        object.suppressSuccessAlerts,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cron != null) {
      yield r'cron';
      yield serializers.serialize(
        object.cron,
        specifiedType: const FullType(String),
      );
    }
    if (object.buildTemplate != null) {
      yield r'build_template';
      yield serializers.serialize(
        object.buildTemplate,
        specifiedType: const FullType(String),
      );
    }
    if (object.autorun != null) {
      yield r'autorun';
      yield serializers.serialize(
        object.autorun,
        specifiedType: const FullType(bool),
      );
    }
    if (object.surveyVars != null) {
      yield r'survey_vars';
      yield serializers.serialize(
        object.surveyVars,
        specifiedType: const FullType(String),
      );
    }
    if (object.startVersion != null) {
      yield r'start_version';
      yield serializers.serialize(
        object.startVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.vaultKey != null) {
      yield r'vault_key';
      yield serializers.serialize(
        object.vaultKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowOverrideBranchInTask != null) {
      yield r'allow_override_branch_in_task';
      yield serializers.serialize(
        object.allowOverrideBranchInTask,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackupTemplatesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupTemplatesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inventory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inventory = valueDes;
          break;
        case r'repository':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.repository = valueDes;
          break;
        case r'environment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.environment = valueDes;
          break;
        case r'view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.view = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'playbook':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.playbook = valueDes;
          break;
        case r'arguments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.arguments = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'allow_override_args_in_task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowOverrideArgsInTask = valueDes;
          break;
        case r'suppress_success_alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.suppressSuccessAlerts = valueDes;
          break;
        case r'cron':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cron = valueDes;
          break;
        case r'build_template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.buildTemplate = valueDes;
          break;
        case r'autorun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autorun = valueDes;
          break;
        case r'survey_vars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surveyVars = valueDes;
          break;
        case r'start_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startVersion = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'vault_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vaultKey = valueDes;
          break;
        case r'allow_override_branch_in_task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowOverrideBranchInTask = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBackupTemplatesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupTemplatesInnerBuilder();
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

