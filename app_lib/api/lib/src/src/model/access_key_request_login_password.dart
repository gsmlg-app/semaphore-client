//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'access_key_request_login_password.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccessKeyRequestLoginPassword {
  /// Returns a new [AccessKeyRequestLoginPassword] instance.
  AccessKeyRequestLoginPassword({

     this.password,

     this.login,
  });

  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @JsonKey(
    
    name: r'login',
    required: false,
    includeIfNull: false
  )


  final String? login;



  @override
  bool operator ==(Object other) => identical(this, other) || other is AccessKeyRequestLoginPassword &&
     other.password == password &&
     other.login == login;

  @override
  int get hashCode =>
    password.hashCode +
    login.hashCode;

  factory AccessKeyRequestLoginPassword.fromJson(Map<String, dynamic> json) => _$AccessKeyRequestLoginPasswordFromJson(json);

  Map<String, dynamic> toJson() => _$AccessKeyRequestLoginPasswordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

