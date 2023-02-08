import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';

@freezed
class BrandModel with _$BrandModel {
  const factory BrandModel({
    required int id,
    required String name,
    required String description,
    required String thumbnail,
    required String image,
    required int isActive,
  }) = _BrandModel;

  
}
