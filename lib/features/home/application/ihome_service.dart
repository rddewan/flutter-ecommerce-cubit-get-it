


import 'package:ecommerce_cubit_getit/features/home/domain/model/brand_model.dart';
import 'package:ecommerce_cubit_getit/features/home/domain/model/category_model.dart';
import 'package:ecommerce_cubit_getit/features/home/domain/model/featured_product_model.dart';

abstract class IHomeService {
  Future<List<String>> getHomeBanner();

  Future<List<BrandModel>> getBrands();

  Future<List<CategoryModel>> getCategories();

  Future<List<FeaturedProductModel>> getFeaturedProduct();
}