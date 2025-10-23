// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class ProjectRequestBuilder {
  void replace(ProjectRequest other);
  void update(void Function(ProjectRequestBuilder) updates);
  String? get name;
  set name(String? name);

  bool? get alert;
  set alert(bool? alert);

  String? get alertChat;
  set alertChat(String? alertChat);

  int? get maxParallelTasks;
  set maxParallelTasks(int? maxParallelTasks);

  String? get type;
  set type(String? type);

  bool? get demo;
  set demo(bool? demo);
}

class _$$ProjectRequest extends $ProjectRequest {
  @override
  final String? name;
  @override
  final bool? alert;
  @override
  final String? alertChat;
  @override
  final int? maxParallelTasks;
  @override
  final String? type;
  @override
  final bool? demo;

  factory _$$ProjectRequest([void Function($ProjectRequestBuilder)? updates]) =>
      ($ProjectRequestBuilder()..update(updates))._build();

  _$$ProjectRequest._(
      {this.name,
      this.alert,
      this.alertChat,
      this.maxParallelTasks,
      this.type,
      this.demo})
      : super._();
  @override
  $ProjectRequest rebuild(void Function($ProjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ProjectRequestBuilder toBuilder() => $ProjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ProjectRequest &&
        name == other.name &&
        alert == other.alert &&
        alertChat == other.alertChat &&
        maxParallelTasks == other.maxParallelTasks &&
        type == other.type &&
        demo == other.demo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, alertChat.hashCode);
    _$hash = $jc(_$hash, maxParallelTasks.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, demo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ProjectRequest')
          ..add('name', name)
          ..add('alert', alert)
          ..add('alertChat', alertChat)
          ..add('maxParallelTasks', maxParallelTasks)
          ..add('type', type)
          ..add('demo', demo))
        .toString();
  }
}

class $ProjectRequestBuilder
    implements
        Builder<$ProjectRequest, $ProjectRequestBuilder>,
        ProjectRequestBuilder {
  _$$ProjectRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  bool? _alert;
  bool? get alert => _$this._alert;
  set alert(covariant bool? alert) => _$this._alert = alert;

  String? _alertChat;
  String? get alertChat => _$this._alertChat;
  set alertChat(covariant String? alertChat) => _$this._alertChat = alertChat;

  int? _maxParallelTasks;
  int? get maxParallelTasks => _$this._maxParallelTasks;
  set maxParallelTasks(covariant int? maxParallelTasks) =>
      _$this._maxParallelTasks = maxParallelTasks;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  bool? _demo;
  bool? get demo => _$this._demo;
  set demo(covariant bool? demo) => _$this._demo = demo;

  $ProjectRequestBuilder() {
    $ProjectRequest._defaults(this);
  }

  $ProjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _alert = $v.alert;
      _alertChat = $v.alertChat;
      _maxParallelTasks = $v.maxParallelTasks;
      _type = $v.type;
      _demo = $v.demo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ProjectRequest other) {
    _$v = other as _$$ProjectRequest;
  }

  @override
  void update(void Function($ProjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ProjectRequest build() => _build();

  _$$ProjectRequest _build() {
    final _$result = _$v ??
        _$$ProjectRequest._(
          name: name,
          alert: alert,
          alertChat: alertChat,
          maxParallelTasks: maxParallelTasks,
          type: type,
          demo: demo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
