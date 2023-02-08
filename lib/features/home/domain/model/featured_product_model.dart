

import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_product_model.freezed.dart';
@freezed
class FeaturedProductModel with _$FeaturedProductModel {
  
  const factory FeaturedProductModel({
    required final int id,
    required final String categoryId,  
    required final String brandId,
    required final String sku,
    required final String name,   
    required final String shortDescription,  
    required final String longDescription,
    required final String thumbnail,
    required final String images,   
    required final int isActive,
    required final double price,
    required final double discount,
    required final double discountedPrice,
    required final String formattedPrice,
    required final String formattedDiscount,
    required final String formattedDiscountedPrice,
    required final String currency,
    required final int qty,
    required final String category,
    required final String brand,
  
  }) = _FeaturedProductModel;

}
