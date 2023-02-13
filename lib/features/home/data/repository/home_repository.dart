


import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/features/home/data/api/ihome_api.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/banner/home_banner_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/brand/brand_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/category/category_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/product/featured_product_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/repository/ihome_repository.dart';

class HomeRepository  implements IHomeRepository {
  final IHomeApiService _homeApiService;
  
  HomeRepository(this._homeApiService);

  @override
  Future<List<HomeBannerResponse>> getHomeBanner() async {   
    try {

      final response = await _homeApiService.getHomeBanner();

      return homeBannerResponseFromJson(response.body);
      
    } catch (e) {
      throw Failure(message: e.toString());      
    } 
      
  }

  @override
  Future<List<BrandResponse>> getBrands() async {
    try {

      final response = await _homeApiService.getBrands();

      return brandResponseFromJson(response.body);
      
    } catch (e) {
      throw Failure(message: e.toString()); 
    }
    
  }

  @override
  Future<List<CategoryResponse>> getCategories() async {
    try {

      final response = await _homeApiService.getCategories();

      return categoryResponseFromJson(response.body);
      
    } catch (e) {
      throw Failure(message: e.toString()); 
    }
      
  }

  @override
  Future<List<FeaturedProductResponse>> getFeaturedProduct() async {
    try {

      final response = await _homeApiService.getFeaturedProduct();

      return featuredResponseFromJson(response.body);
      
    } catch (e) {
      throw Failure(message: e.toString()); 
    }
    
  }
  
}