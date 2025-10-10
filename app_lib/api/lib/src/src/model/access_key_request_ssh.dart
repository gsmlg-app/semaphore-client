//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'access_key_request_ssh.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccessKeyRequestSsh {
  /// Returns a new [AccessKeyRequestSsh] instance.
  AccessKeyRequestSsh({

     this.login,

     this.passphrase,

     this.privateKey,
  });

  @JsonKey(
    
    name: r'login',
    required: false,
    includeIfNull: false
  )


  final String? login;



  @JsonKey(
    
    name: r'passphrase',
    required: false,
    includeIfNull: false
  )


  final String? passphrase;



  @JsonKey(
    
    name: r'private_key',
    required: false,
    includeIfNull: false
  )


  final String? privateKey;



  @override
  bool operator ==(Object other) => identical(this, other) || other is AccessKeyRequestSsh &&
     other.login == login &&
     other.passphrase == passphrase &&
     other.privateKey == privateKey;

  @override
  int get hashCode =>
    login.hashCode +
    passphrase.hashCode +
    privateKey.hashCode;

  factory AccessKeyRequestSsh.fromJson(Map<String, dynamic> json) => _$AccessKeyRequestSshFromJson(json);

  Map<String, dynamic> toJson() => _$AccessKeyRequestSshToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

