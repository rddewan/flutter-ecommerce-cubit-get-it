import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_response.freezed.dart';
part 'brand_response.g.dart';

List<BrandResponse> brandResponseFromJson(String str) => List<BrandResponse>.from(json.decode(str).map((x) => BrandResponse.fromJson(x)));

String brandResponseToJson(List<BrandResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


@freezed
class BrandResponse with _$BrandResponse {
  const factory BrandResponse({
    required int id,
    required String name,
    required String description,
    required String thumbnail,
    required String image,
    @JsonKey(name: 'is_active')
    required String isActive,
  }) = _BrandResponse;

  factory BrandResponse.fromJson(Map<String, dynamic> json) => _$BrandResponseFromJson(json);
}
