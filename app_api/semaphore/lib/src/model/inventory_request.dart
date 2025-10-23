//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inventory_request.g.dart';

/// InventoryRequest
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [projectId] 
/// * [inventory] 
/// * [sshKeyId] 
/// * [becomeKeyId] 
/// * [repositoryId] 
/// * [type] 
@BuiltValue()
abstract class InventoryRequest implements Built<InventoryRequest, InventoryRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'inventory')
  String? get inventory;

  @BuiltValueField(wireName: r'ssh_key_id')
  int? get sshKeyId;

  @BuiltValueField(wireName: r'become_key_id')
  int? get becomeKeyId;

  @BuiltValueField(wireName: r'repository_id')
  int? get repositoryId;

  @BuiltValueField(wireName: r'type')
  InventoryRequestTypeEnum? get type;
  // enum typeEnum {  static,  static-yaml,  file,  terraform-workspace,  };

  InventoryRequest._();

  factory InventoryRequest([void updates(InventoryRequestBuilder b)]) = _$InventoryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InventoryRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InventoryRequest> get serializer => _$InventoryRequestSerializer();
}

class _$InventoryRequestSerializer implements PrimitiveSerializer<InventoryRequest> {
  @override
  final Iterable<Type> types = const [InventoryRequest, _$InventoryRequest];

  @override
  final String wireName = r'InventoryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InventoryRequest object, {
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
    if (object.inventory != null) {
      yield r'inventory';
      yield serializers.serialize(
        object.inventory,
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
    if (object.becomeKeyId != null) {
      yield r'become_key_id';
      yield serializers.serialize(
        object.becomeKeyId,
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(InventoryRequestTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InventoryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InventoryRequestBuilder result,
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
        case r'inventory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inventory = valueDes;
          break;
        case r'ssh_key_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sshKeyId = valueDes;
          break;
        case r'become_key_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.becomeKeyId = valueDes;
          break;
        case r'repository_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.repositoryId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InventoryRequestTypeEnum),
          ) as InventoryRequestTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InventoryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryRequestBuilder();
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

class InventoryRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'static')
  static const InventoryRequestTypeEnum static_ = _$inventoryRequestTypeEnum_static_;
  @BuiltValueEnumConst(wireName: r'static-yaml')
  static const InventoryRequestTypeEnum staticYaml = _$inventoryRequestTypeEnum_staticYaml;
  @BuiltValueEnumConst(wireName: r'file')
  static const InventoryRequestTypeEnum file = _$inventoryRequestTypeEnum_file;
  @BuiltValueEnumConst(wireName: r'terraform-workspace')
  static const InventoryRequestTypeEnum terraformWorkspace = _$inventoryRequestTypeEnum_terraformWorkspace;

  static Serializer<InventoryRequestTypeEnum> get serializer => _$inventoryRequestTypeEnumSerializer;

  const InventoryRequestTypeEnum._(String name): super(name);

  static BuiltSet<InventoryRequestTypeEnum> get values => _$inventoryRequestTypeEnumValues;
  static InventoryRequestTypeEnum valueOf(String name) => _$inventoryRequestTypeEnumValueOf(name);
}

