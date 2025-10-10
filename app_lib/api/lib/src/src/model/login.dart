//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Login {
  /// Returns a new [Login] instance.
  Login({

     this.auth,

     this.password,
  });

      /// Username/Email address
  @JsonKey(
    
    name: r'auth',
    required: false,
    includeIfNull: false
  )


  final String? auth;



      /// Password
  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Login &&
     other.auth == auth &&
     other.password == password;

  @override
  int get hashCode =>
    auth.hashCode +
    password.hashCode;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

