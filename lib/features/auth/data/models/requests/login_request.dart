import 'package:json_annotation/json_annotation.dart';
part 'login_request.g.dart';
@JsonSerializable()
class LoginRequest {
  String? email;
  String? password;

  LoginRequest({this.email, this.password});
  /// Connect the generated [_$LoginRequestToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
