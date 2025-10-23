// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfoType extends InfoType {
  @override
  final String? version;
  @override
  final String? ansible;
  @override
  final String? webHost;
  @override
  final bool? useRemoteRunner;
  @override
  final JsonObject? authMethods;
  @override
  final String? gitClient;
  @override
  final String? scheduleTimezone;
  @override
  final JsonObject? premiumFeatures;

  factory _$InfoType([void Function(InfoTypeBuilder)? updates]) =>
      (InfoTypeBuilder()..update(updates))._build();

  _$InfoType._(
      {this.version,
      this.ansible,
      this.webHost,
      this.useRemoteRunner,
      this.authMethods,
      this.gitClient,
      this.scheduleTimezone,
      this.premiumFeatures})
      : super._();
  @override
  InfoType rebuild(void Function(InfoTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoTypeBuilder toBuilder() => InfoTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfoType &&
        version == other.version &&
        ansible == other.ansible &&
        webHost == other.webHost &&
        useRemoteRunner == other.useRemoteRunner &&
        authMethods == other.authMethods &&
        gitClient == other.gitClient &&
        scheduleTimezone == other.scheduleTimezone &&
        premiumFeatures == other.premiumFeatures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ansible.hashCode);
    _$hash = $jc(_$hash, webHost.hashCode);
    _$hash = $jc(_$hash, useRemoteRunner.hashCode);
    _$hash = $jc(_$hash, authMethods.hashCode);
    _$hash = $jc(_$hash, gitClient.hashCode);
    _$hash = $jc(_$hash, scheduleTimezone.hashCode);
    _$hash = $jc(_$hash, premiumFeatures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfoType')
          ..add('version', version)
          ..add('ansible', ansible)
          ..add('webHost', webHost)
          ..add('useRemoteRunner', useRemoteRunner)
          ..add('authMethods', authMethods)
          ..add('gitClient', gitClient)
          ..add('scheduleTimezone', scheduleTimezone)
          ..add('premiumFeatures', premiumFeatures))
        .toString();
  }
}

class InfoTypeBuilder implements Builder<InfoType, InfoTypeBuilder> {
  _$InfoType? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _ansible;
  String? get ansible => _$this._ansible;
  set ansible(String? ansible) => _$this._ansible = ansible;

  String? _webHost;
  String? get webHost => _$this._webHost;
  set webHost(String? webHost) => _$this._webHost = webHost;

  bool? _useRemoteRunner;
  bool? get useRemoteRunner => _$this._useRemoteRunner;
  set useRemoteRunner(bool? useRemoteRunner) =>
      _$this._useRemoteRunner = useRemoteRunner;

  JsonObject? _authMethods;
  JsonObject? get authMethods => _$this._authMethods;
  set authMethods(JsonObject? authMethods) => _$this._authMethods = authMethods;

  String? _gitClient;
  String? get gitClient => _$this._gitClient;
  set gitClient(String? gitClient) => _$this._gitClient = gitClient;

  String? _scheduleTimezone;
  String? get scheduleTimezone => _$this._scheduleTimezone;
  set scheduleTimezone(String? scheduleTimezone) =>
      _$this._scheduleTimezone = scheduleTimezone;

  JsonObject? _premiumFeatures;
  JsonObject? get premiumFeatures => _$this._premiumFeatures;
  set premiumFeatures(JsonObject? premiumFeatures) =>
      _$this._premiumFeatures = premiumFeatures;

  InfoTypeBuilder() {
    InfoType._defaults(this);
  }

  InfoTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _ansible = $v.ansible;
      _webHost = $v.webHost;
      _useRemoteRunner = $v.useRemoteRunner;
      _authMethods = $v.authMethods;
      _gitClient = $v.gitClient;
      _scheduleTimezone = $v.scheduleTimezone;
      _premiumFeatures = $v.premiumFeatures;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfoType other) {
    _$v = other as _$InfoType;
  }

  @override
  void update(void Function(InfoTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfoType build() => _build();

  _$InfoType _build() {
    final _$result = _$v ??
        _$InfoType._(
          version: version,
          ansible: ansible,
          webHost: webHost,
          useRemoteRunner: useRemoteRunner,
          authMethods: authMethods,
          gitClient: gitClient,
          scheduleTimezone: scheduleTimezone,
          premiumFeatures: premiumFeatures,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
