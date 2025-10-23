// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ViewRequest extends ViewRequest {
  @override
  final String? title;
  @override
  final int? projectId;
  @override
  final int? position;

  factory _$ViewRequest([void Function(ViewRequestBuilder)? updates]) =>
      (ViewRequestBuilder()..update(updates))._build();

  _$ViewRequest._({this.title, this.projectId, this.position}) : super._();
  @override
  ViewRequest rebuild(void Function(ViewRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ViewRequestBuilder toBuilder() => ViewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ViewRequest &&
        title == other.title &&
        projectId == other.projectId &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ViewRequest')
          ..add('title', title)
          ..add('projectId', projectId)
          ..add('position', position))
        .toString();
  }
}

class ViewRequestBuilder implements Builder<ViewRequest, ViewRequestBuilder> {
  _$ViewRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  ViewRequestBuilder() {
    ViewRequest._defaults(this);
  }

  ViewRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _projectId = $v.projectId;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ViewRequest other) {
    _$v = other as _$ViewRequest;
  }

  @override
  void update(void Function(ViewRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ViewRequest build() => _build();

  _$ViewRequest _build() {
    final _$result = _$v ??
        _$ViewRequest._(
          title: title,
          projectId: projectId,
          position: position,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
