import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  String? message;
  User? user;
  String? token;

  AuthResponse({this.message, this.user, this.token});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}

@JsonSerializable()
class User {
  String? name;
  String? email;
  String? role;

  User({this.name, this.email, this.role});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
