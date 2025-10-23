//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:semaphore_api/src/model/template_vault.dart';
import 'package:semaphore_api/src/model/template_survey_var.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template.g.dart';

/// Template
///
/// Properties:
/// * [id] 
/// * [projectId] 
/// * [inventoryId] 
/// * [repositoryId] 
/// * [environmentId] 
/// * [viewId] 
/// * [name] 
/// * [playbook] 
/// * [arguments] 
/// * [description] 
/// * [allowOverrideArgsInTask] 
/// * [suppressSuccessAlerts] 
/// * [app] 
/// * [gitBranch] 
/// * [type] 
/// * [startVersion] 
/// * [buildTemplateId] 
/// * [autorun] 
/// * [surveyVars] 
/// * [vaults] 
@BuiltValue()
abstract class Template implements Built<Template, TemplateBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'inventory_id')
  int? get inventoryId;

  @BuiltValueField(wireName: r'repository_id')
  int? get repositoryId;

  @BuiltValueField(wireName: r'environment_id')
  int? get environmentId;

  @BuiltValueField(wireName: r'view_id')
  int? get viewId;

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

  @BuiltValueField(wireName: r'app')
  String? get app;

  @BuiltValueField(wireName: r'git_branch')
  String? get gitBranch;

  @BuiltValueField(wireName: r'type')
  TemplateTypeEnum? get type;
  // enum typeEnum {  ,  build,  deploy,  };

  @BuiltValueField(wireName: r'start_version')
  String? get startVersion;

  @BuiltValueField(wireName: r'build_template_id')
  int? get buildTemplateId;

  @BuiltValueField(wireName: r'autorun')
  bool? get autorun;

  @BuiltValueField(wireName: r'survey_vars')
  BuiltList<TemplateSurveyVar>? get surveyVars;

  @BuiltValueField(wireName: r'vaults')
  BuiltList<TemplateVault>? get vaults;

  Template._();

  factory Template([void updates(TemplateBuilder b)]) = _$Template;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Template> get serializer => _$TemplateSerializer();
}

class _$TemplateSerializer implements PrimitiveSerializer<Template> {
  @override
  final Iterable<Type> types = const [Template, _$Template];

  @override
  final String wireName = r'Template';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Template object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.projectId != null) {
      yield r'project_id';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(int),
      );
    }
    if (object.inventoryId != null) {
      yield r'inventory_id';
      yield serializers.serialize(
        object.inventoryId,
        specifiedType: const FullType(int),
      );
    }
    if (object.repositoryId != null) {
      yield r'repository_id';
      yield serializers.serialize(
        object.repositoryId,
        specifiedType: const FullType(int),
      );
    }
    if (object.environmentId != null) {
      yield r'environment_id';
      yield serializers.serialize(
        object.environmentId,
        specifiedType: const FullType(int),
      );
    }
    if (object.viewId != null) {
      yield r'view_id';
      yield serializers.serialize(
        object.viewId,
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
    if (object.app != null) {
      yield r'app';
      yield serializers.serialize(
        object.app,
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TemplateTypeEnum),
      );
    }
    if (object.startVersion != null) {
      yield r'start_version';
      yield serializers.serialize(
        object.startVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.buildTemplateId != null) {
      yield r'build_template_id';
      yield serializers.serialize(
        object.buildTemplateId,
        specifiedType: const FullType(int),
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
        specifiedType: const FullType(BuiltList, [FullType(TemplateSurveyVar)]),
      );
    }
    if (object.vaults != null) {
      yield r'vaults';
      yield serializers.serialize(
        object.vaults,
        specifiedType: const FullType(BuiltList, [FullType(TemplateVault)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Template object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateBuilder result,
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
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        case r'inventory_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inventoryId = valueDes;
          break;
        case r'repository_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.repositoryId = valueDes;
          break;
        case r'environment_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.environmentId = valueDes;
          break;
        case r'view_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.viewId = valueDes;
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
        case r'app':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.app = valueDes;
          break;
        case r'git_branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitBranch = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TemplateTypeEnum),
          ) as TemplateTypeEnum;
          result.type = valueDes;
          break;
        case r'start_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startVersion = valueDes;
          break;
        case r'build_template_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.buildTemplateId = valueDes;
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
            specifiedType: const FullType(BuiltList, [FullType(TemplateSurveyVar)]),
          ) as BuiltList<TemplateSurveyVar>;
          result.surveyVars.replace(valueDes);
          break;
        case r'vaults':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TemplateVault)]),
          ) as BuiltList<TemplateVault>;
          result.vaults.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Template deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateBuilder();
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

class TemplateTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'')
  static const TemplateTypeEnum empty = _$templateTypeEnum_empty;
  @BuiltValueEnumConst(wireName: r'build')
  static const TemplateTypeEnum build = _$templateTypeEnum_build;
  @BuiltValueEnumConst(wireName: r'deploy')
  static const TemplateTypeEnum deploy = _$templateTypeEnum_deploy;

  static Serializer<TemplateTypeEnum> get serializer => _$templateTypeEnumSerializer;

  const TemplateTypeEnum._(String name): super(name);

  static BuiltSet<TemplateTypeEnum> get values => _$templateTypeEnumValues;
  static TemplateTypeEnum valueOf(String name) => _$templateTypeEnumValueOf(name);
}

