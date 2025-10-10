//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserRequest {
  /// Returns a new [UserRequest] instance.
  UserRequest({

     this.name,

     this.username,

     this.email,

     this.password,

     this.alert,

     this.admin,

     this.external_,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false
  )


  final String? username;



  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false
  )


  final String? email;



  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @JsonKey(
    
    name: r'alert',
    required: false,
    includeIfNull: false
  )


  final bool? alert;



  @JsonKey(
    
    name: r'admin',
    required: false,
    includeIfNull: false
  )


  final bool? admin;



  @JsonKey(
    
    name: r'external',
    required: false,
    includeIfNull: false
  )


  final bool? external_;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UserRequest &&
     other.name == name &&
     other.username == username &&
     other.email == email &&
     other.password == password &&
     other.alert == alert &&
     other.admin == admin &&
     other.external_ == external_;

  @override
  int get hashCode =>
    name.hashCode +
    username.hashCode +
    email.hashCode +
    password.hashCode +
    alert.hashCode +
    admin.hashCode +
    external_.hashCode;

  factory UserRequest.fromJson(Map<String, dynamic> json) => _$UserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

