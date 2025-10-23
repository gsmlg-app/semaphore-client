// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Event extends Event {
  @override
  final int? projectId;
  @override
  final int? userId;
  @override
  final int? objectId;
  @override
  final String? objectType;
  @override
  final String? description;

  factory _$Event([void Function(EventBuilder)? updates]) =>
      (EventBuilder()..update(updates))._build();

  _$Event._(
      {this.projectId,
      this.userId,
      this.objectId,
      this.objectType,
      this.description})
      : super._();
  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        projectId == other.projectId &&
        userId == other.userId &&
        objectId == other.objectId &&
        objectType == other.objectType &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, objectId.hashCode);
    _$hash = $jc(_$hash, objectType.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Event')
          ..add('projectId', projectId)
          ..add('userId', userId)
          ..add('objectId', objectId)
          ..add('objectType', objectType)
          ..add('description', description))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event? _$v;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _objectId;
  int? get objectId => _$this._objectId;
  set objectId(int? objectId) => _$this._objectId = objectId;

  String? _objectType;
  String? get objectType => _$this._objectType;
  set objectType(String? objectType) => _$this._objectType = objectType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  EventBuilder() {
    Event._defaults(this);
  }

  EventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _userId = $v.userId;
      _objectId = $v.objectId;
      _objectType = $v.objectType;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Event build() => _build();

  _$Event _build() {
    final _$result = _$v ??
        _$Event._(
          projectId: projectId,
          userId: userId,
          objectId: objectId,
          objectType: objectType,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
