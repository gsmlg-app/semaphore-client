//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_vault.g.dart';

/// TemplateVault
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [type] 
/// * [vaultKeyId] 
/// * [script] 
@BuiltValue()
abstract class TemplateVault implements Built<TemplateVault, TemplateVaultBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  TemplateVaultTypeEnum? get type;
  // enum typeEnum {  password,  script,  };

  @BuiltValueField(wireName: r'vault_key_id')
  int? get vaultKeyId;

  @BuiltValueField(wireName: r'script')
  String? get script;

  TemplateVault._();

  factory TemplateVault([void updates(TemplateVaultBuilder b)]) = _$TemplateVault;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateVaultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateVault> get serializer => _$TemplateVaultSerializer();
}

class _$TemplateVaultSerializer implements PrimitiveSerializer<TemplateVault> {
  @override
  final Iterable<Type> types = const [TemplateVault, _$TemplateVault];

  @override
  final String wireName = r'TemplateVault';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateVault object, {
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TemplateVaultTypeEnum),
      );
    }
    if (object.vaultKeyId != null) {
      yield r'vault_key_id';
      yield serializers.serialize(
        object.vaultKeyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.script != null) {
      yield r'script';
      yield serializers.serialize(
        object.script,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateVault object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateVaultBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TemplateVaultTypeEnum),
          ) as TemplateVaultTypeEnum;
          result.type = valueDes;
          break;
        case r'vault_key_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vaultKeyId = valueDes;
          break;
        case r'script':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.script = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateVault deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateVaultBuilder();
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

class TemplateVaultTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'password')
  static const TemplateVaultTypeEnum password = _$templateVaultTypeEnum_password;
  @BuiltValueEnumConst(wireName: r'script')
  static const TemplateVaultTypeEnum script = _$templateVaultTypeEnum_script;

  static Serializer<TemplateVaultTypeEnum> get serializer => _$templateVaultTypeEnumSerializer;

  const TemplateVaultTypeEnum._(String name): super(name);

  static BuiltSet<TemplateVaultTypeEnum> get values => _$templateVaultTypeEnumValues;
  static TemplateVaultTypeEnum valueOf(String name) => _$templateVaultTypeEnumValueOf(name);
}

