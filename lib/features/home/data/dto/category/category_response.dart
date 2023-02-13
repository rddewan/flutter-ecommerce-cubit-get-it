import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

List<CategoryResponse> categoryResponseFromJson(String str) => List<CategoryResponse>.from(json.decode(str).map((x) => CategoryResponse.fromJson(x)));

String categoryResponseToJson(List<CategoryResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    required int id,
    required String name,
    required String description,
    required String thumbnail,
    required String image,
    @JsonKey(name: 'is_active')
    required String isActive,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);
}
