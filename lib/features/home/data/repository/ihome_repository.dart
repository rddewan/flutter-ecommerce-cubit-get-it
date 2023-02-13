

import 'package:ecommerce_cubit_getit/features/home/data/dto/banner/home_banner_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/brand/brand_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/category/category_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/product/featured_product_response.dart';

abstract class IHomeRepository {
  Future<List<HomeBannerResponse>> getHomeBanner();

  Future<List<CategoryResponse>> getCategories();

  Future<List<BrandResponse>> getBrands();

  Future<List<FeaturedProductResponse>> getFeaturedProduct();
}