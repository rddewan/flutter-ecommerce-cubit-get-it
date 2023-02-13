
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_product_response.freezed.dart';
part 'featured_product_response.g.dart';

List<FeaturedProductResponse> featuredResponseFromJson(String str) => List<FeaturedProductResponse>.from(json.decode(str).map((x) => FeaturedProductResponse.fromJson(x)));

String featuredResponseToJson(List<FeaturedProductResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


@freezed
class FeaturedProductResponse with _$FeaturedProductResponse {
  const factory FeaturedProductResponse({
    required String id,
    @JsonKey(name: 'category_id')
    required String categoryId,
    @JsonKey(name: 'brand_id')
    required String brandId,
    required String sku,
    required String name,
    @JsonKey(name: 'short_description')
    required String shortDescription,
    @JsonKey(name: 'long_description')
    required String longDescription,
    required String thumbnail,
    required String images,
    @JsonKey(name: 'is_active')
    required String isActive,
    @JsonKey(name: 'deleted_at')
    DateTime? deletedAt,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    required String price,
    required String discount,
    required String currency,
    required String qty,
    required String brand,
    required String category,
  }) = _FeaturedProductResponse;

  factory FeaturedProductResponse.fromJson(Map<String, dynamic> json) => _$FeaturedProductResponseFromJson(json);
}
