
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart' ;


part 'login_response.freezed.dart';
part 'login_response.g.dart';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());


@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: 'access_token')
    required String accessToken,
    @JsonKey(name: 'token_id')
    required String tokenId,
    @JsonKey(name: 'user_id')
    required int userId,
    required String name,
    required String email,
  }) = _LoginResponse;

    factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
