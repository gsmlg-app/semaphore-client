//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'view.g.dart';

/// View
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [projectId] 
/// * [position] 
/// * [hidden] 
/// * [type] 
/// * [sortColumn] 
/// * [sortReverse] 
@BuiltValue()
abstract class View implements Built<View, ViewBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'position')
  int? get position;

  @BuiltValueField(wireName: r'hidden')
  bool? get hidden;

  @BuiltValueField(wireName: r'type')
  ViewTypeEnum? get type;
  // enum typeEnum {  ,  all,  };

  @BuiltValueField(wireName: r'sort_column')
  ViewSortColumnEnum? get sortColumn;
  // enum sortColumnEnum {  name,  };

  @BuiltValueField(wireName: r'sort_reverse')
  bool? get sortReverse;

  View._();

  factory View([void updates(ViewBuilder b)]) = _$View;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<View> get serializer => _$ViewSerializer();
}

class _$ViewSerializer implements PrimitiveSerializer<View> {
  @override
  final Iterable<Type> types = const [View, _$View];

  @override
  final String wireName = r'View';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    View object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
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
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
    if (object.hidden != null) {
      yield r'hidden';
      yield serializers.serialize(
        object.hidden,
        specifiedType: const FullType(bool),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ViewTypeEnum),
      );
    }
    if (object.sortColumn != null) {
      yield r'sort_column';
      yield serializers.serialize(
        object.sortColumn,
        specifiedType: const FullType(ViewSortColumnEnum),
      );
    }
    if (object.sortReverse != null) {
      yield r'sort_reverse';
      yield serializers.serialize(
        object.sortReverse,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    View object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ViewBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        case r'hidden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hidden = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ViewTypeEnum),
          ) as ViewTypeEnum;
          result.type = valueDes;
          break;
        case r'sort_column':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ViewSortColumnEnum),
          ) as ViewSortColumnEnum;
          result.sortColumn = valueDes;
          break;
        case r'sort_reverse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sortReverse = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  View deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ViewBuilder();
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

class ViewTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'')
  static const ViewTypeEnum empty = _$viewTypeEnum_empty;
  @BuiltValueEnumConst(wireName: r'all')
  static const ViewTypeEnum all = _$viewTypeEnum_all;

  static Serializer<ViewTypeEnum> get serializer => _$viewTypeEnumSerializer;

  const ViewTypeEnum._(String name): super(name);

  static BuiltSet<ViewTypeEnum> get values => _$viewTypeEnumValues;
  static ViewTypeEnum valueOf(String name) => _$viewTypeEnumValueOf(name);
}

class ViewSortColumnEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'name')
  static const ViewSortColumnEnum name_ = _$viewSortColumnEnum_name;

  static Serializer<ViewSortColumnEnum> get serializer => _$viewSortColumnEnumSerializer;

  const ViewSortColumnEnum._(String name): super(name);

  static BuiltSet<ViewSortColumnEnum> get values => _$viewSortColumnEnumValues;
  static ViewSortColumnEnum valueOf(String name) => _$viewSortColumnEnumValueOf(name);
}

