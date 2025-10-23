// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ViewTypeEnum _$viewTypeEnum_empty = const ViewTypeEnum._('empty');
const ViewTypeEnum _$viewTypeEnum_all = const ViewTypeEnum._('all');

ViewTypeEnum _$viewTypeEnumValueOf(String name) {
  switch (name) {
    case 'empty':
      return _$viewTypeEnum_empty;
    case 'all':
      return _$viewTypeEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ViewTypeEnum> _$viewTypeEnumValues =
    BuiltSet<ViewTypeEnum>(const <ViewTypeEnum>[
  _$viewTypeEnum_empty,
  _$viewTypeEnum_all,
]);

const ViewSortColumnEnum _$viewSortColumnEnum_name =
    const ViewSortColumnEnum._('name_');

ViewSortColumnEnum _$viewSortColumnEnumValueOf(String name) {
  switch (name) {
    case 'name_':
      return _$viewSortColumnEnum_name;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ViewSortColumnEnum> _$viewSortColumnEnumValues =
    BuiltSet<ViewSortColumnEnum>(const <ViewSortColumnEnum>[
  _$viewSortColumnEnum_name,
]);

Serializer<ViewTypeEnum> _$viewTypeEnumSerializer = _$ViewTypeEnumSerializer();
Serializer<ViewSortColumnEnum> _$viewSortColumnEnumSerializer =
    _$ViewSortColumnEnumSerializer();

class _$ViewTypeEnumSerializer implements PrimitiveSerializer<ViewTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'empty': '',
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '': 'empty',
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[ViewTypeEnum];
  @override
  final String wireName = 'ViewTypeEnum';

  @override
  Object serialize(Serializers serializers, ViewTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ViewTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ViewTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ViewSortColumnEnumSerializer
    implements PrimitiveSerializer<ViewSortColumnEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'name_': 'name',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'name': 'name_',
  };

  @override
  final Iterable<Type> types = const <Type>[ViewSortColumnEnum];
  @override
  final String wireName = 'ViewSortColumnEnum';

  @override
  Object serialize(Serializers serializers, ViewSortColumnEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ViewSortColumnEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ViewSortColumnEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$View extends View {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? projectId;
  @override
  final int? position;
  @override
  final bool? hidden;
  @override
  final ViewTypeEnum? type;
  @override
  final ViewSortColumnEnum? sortColumn;
  @override
  final bool? sortReverse;

  factory _$View([void Function(ViewBuilder)? updates]) =>
      (ViewBuilder()..update(updates))._build();

  _$View._(
      {this.id,
      this.title,
      this.projectId,
      this.position,
      this.hidden,
      this.type,
      this.sortColumn,
      this.sortReverse})
      : super._();
  @override
  View rebuild(void Function(ViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ViewBuilder toBuilder() => ViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is View &&
        id == other.id &&
        title == other.title &&
        projectId == other.projectId &&
        position == other.position &&
        hidden == other.hidden &&
        type == other.type &&
        sortColumn == other.sortColumn &&
        sortReverse == other.sortReverse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, hidden.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, sortColumn.hashCode);
    _$hash = $jc(_$hash, sortReverse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'View')
          ..add('id', id)
          ..add('title', title)
          ..add('projectId', projectId)
          ..add('position', position)
          ..add('hidden', hidden)
          ..add('type', type)
          ..add('sortColumn', sortColumn)
          ..add('sortReverse', sortReverse))
        .toString();
  }
}

class ViewBuilder implements Builder<View, ViewBuilder> {
  _$View? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  bool? _hidden;
  bool? get hidden => _$this._hidden;
  set hidden(bool? hidden) => _$this._hidden = hidden;

  ViewTypeEnum? _type;
  ViewTypeEnum? get type => _$this._type;
  set type(ViewTypeEnum? type) => _$this._type = type;

  ViewSortColumnEnum? _sortColumn;
  ViewSortColumnEnum? get sortColumn => _$this._sortColumn;
  set sortColumn(ViewSortColumnEnum? sortColumn) =>
      _$this._sortColumn = sortColumn;

  bool? _sortReverse;
  bool? get sortReverse => _$this._sortReverse;
  set sortReverse(bool? sortReverse) => _$this._sortReverse = sortReverse;

  ViewBuilder() {
    View._defaults(this);
  }

  ViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _projectId = $v.projectId;
      _position = $v.position;
      _hidden = $v.hidden;
      _type = $v.type;
      _sortColumn = $v.sortColumn;
      _sortReverse = $v.sortReverse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(View other) {
    _$v = other as _$View;
  }

  @override
  void update(void Function(ViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  View build() => _build();

  _$View _build() {
    final _$result = _$v ??
        _$View._(
          id: id,
          title: title,
          projectId: projectId,
          position: position,
          hidden: hidden,
          type: type,
          sortColumn: sortColumn,
          sortReverse: sortReverse,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
