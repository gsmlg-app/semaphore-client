//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'api_token.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class APIToken {
  /// Returns a new [APIToken] instance.
  APIToken({

     this.id,

     this.created,

     this.expired,

     this.userId,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



  @JsonKey(
    
    name: r'created',
    required: false,
    includeIfNull: false
  )


  final String? created;



  @JsonKey(
    
    name: r'expired',
    required: false,
    includeIfNull: false
  )


  final bool? expired;



          // minimum: 1
  @JsonKey(
    
    name: r'user_id',
    required: false,
    includeIfNull: false
  )


  final int? userId;



  @override
  bool operator ==(Object other) => identical(this, other) || other is APIToken &&
     other.id == id &&
     other.created == created &&
     other.expired == expired &&
     other.userId == userId;

  @override
  int get hashCode =>
    id.hashCode +
    created.hashCode +
    expired.hashCode +
    userId.hashCode;

  factory APIToken.fromJson(Map<String, dynamic> json) => _$APITokenFromJson(json);

  Map<String, dynamic> toJson() => _$APITokenToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

