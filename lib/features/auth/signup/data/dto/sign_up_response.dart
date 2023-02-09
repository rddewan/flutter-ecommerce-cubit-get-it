

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

SignUpResponse signUpResponseFromJson(String str) => SignUpResponse.fromJson(json.decode(str));

String signUpResponseToJson(SignUpResponse data) => json.encode(data.toJson());

@freezed 
class  SignUpResponse with _$SignUpResponse {
  
  const factory SignUpResponse({
    required int id,
    required String name,
    required String email,
    required String phone,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

  
}