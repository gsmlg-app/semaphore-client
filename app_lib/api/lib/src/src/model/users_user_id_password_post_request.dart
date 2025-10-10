//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'users_user_id_password_post_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UsersUserIdPasswordPostRequest {
  /// Returns a new [UsersUserIdPasswordPostRequest] instance.
  UsersUserIdPasswordPostRequest({

     this.password,
  });

  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UsersUserIdPasswordPostRequest &&
     other.password == password;

  @override
  int get hashCode =>
    password.hashCode;

  factory UsersUserIdPasswordPostRequest.fromJson(Map<String, dynamic> json) => _$UsersUserIdPasswordPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersUserIdPasswordPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

