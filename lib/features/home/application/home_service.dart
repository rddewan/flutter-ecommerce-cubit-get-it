

import 'package:ecommerce_cubit_getit/common/class/number_format_util.dart';
import 'package:ecommerce_cubit_getit/core/env/env_reader.dart';
import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/features/home/application/ihome_service.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/banner/home_banner_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/brand/brand_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/category/category_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/dto/product/featured_product_response.dart';
import 'package:ecommerce_cubit_getit/features/home/data/repository/ihome_repository.dart';
import 'package:ecommerce_cubit_getit/features/home/domain/model/brand_model.dart';
import 'package:ecommerce_cubit_getit/features/home/domain/model/category_model.dart';
import 'package:ecommerce_cubit_getit/features/home/domain/model/featured_product_model.dart';

class HomeService implements IHomeService {
  final IHomeRepository _homeRepository;
  final EnvReader _envReader;
  final NumberFormatUtil _numberFormatUtil;

  HomeService(this._homeRepository, this._envReader, this._numberFormatUtil);
  
  @override
  Future<List<String>> getHomeBanner() async {
    try {

      final response = await _homeRepository.getHomeBanner();
      final result = _mapToHomeBanner(response);

      return result;
      
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<BrandModel>> getBrands() async {
    try {
      final response = await _homeRepository.getBrands();
      final result = _mapToBrandModel(response);

      return result;
      
    } on Failure catch (_) {
      rethrow;
    }
        
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await _homeRepository.getCategories(); 
      final result = _mapToCategoryModel(response);

      return result;
      
    } on Failure catch (_) {
      rethrow;
    }
       
  }

  @override
  Future<List<FeaturedProductModel>> getFeaturedProduct() async  {
    try {

      final response = await _homeRepository.getFeaturedProduct();
      final result = _mapToFeaturedProductModel(response);

      return result;
      
    } on Failure catch (_) {
      rethrow;
    }
    

  }


  List<String> _mapToHomeBanner(List<HomeBannerResponse> response) {
    return response.map((e) => '${_envReader.getBaseUrl()}${e.image}').toList();
  }

  List<BrandModel> _mapToBrandModel(List<BrandResponse> response) {
    return response.map((e) => BrandModel(
      id: e.id, 
      name: e.name, 
      description: e.description, 
      thumbnail: '${_envReader.getBaseUrl()}${e.thumbnail}', 
      image: '${_envReader.getBaseUrl()}${e.image}', 
      isActive: int.parse(e.isActive ),
    ),).toList();

  }

  List<CategoryModel> _mapToCategoryModel(List<CategoryResponse> response) {
    return response.map((e) => CategoryModel(
      id: e.id, 
      name: e.name, 
      description: e.description, 
      thumbnail: '${_envReader.getBaseUrl()}${e.thumbnail}', 
      image: '${_envReader.getBaseUrl()}${e.image}', 
      isActive: int.parse(e.isActive),
    ),).toList();
  }

  List<FeaturedProductModel> _mapToFeaturedProductModel(List<FeaturedProductResponse> response) {
    return response.map((product) => FeaturedProductModel(
      id: int.parse(product.id), 
      categoryId: product.categoryId, 
      brandId: product.brandId, 
      sku: product.sku, 
      name: product.name, 
      shortDescription: product.shortDescription, 
      longDescription: product.longDescription, 
      thumbnail: '${_envReader.getBaseUrl()}${product.thumbnail}', 
      images: '${_envReader.getBaseUrl()}${product.images}', 
      isActive: int.parse(product.isActive),  
      price: double.parse(product.price),
      discount: double.parse(product.discount),
      discountedPrice: calculateDiscountedPrice(
        double.parse(product.discount),
        double.parse(product.price),
      ),
      formattedPrice: formatPrice(product.currency,product.price), 
      formattedDiscount: double.parse(product.discount).toStringAsFixed(0), 
      formattedDiscountedPrice: calculateFormattedDiscountedPrice(
        double.parse(product.discount), 
        double.parse(product.price), 
        product.currency,
      ), 
      currency: product.currency, 
      qty:int.parse(product.qty), 
      category: product.category, 
      brand: product.brand, 
      
    ),).toList();
  }

  String formatPrice(String currencyCode, String price) {
    return _numberFormatUtil.currencyFormatter(currencyCode)
      .format(double.parse(price));
  }

  String calculateFormattedDiscountedPrice(
    double discountPercent,
    double price,
    String currency,
  ) {

    return formatPrice(currency, (price - (discountPercent / 100 * price)).toString());

  }

  double calculateDiscountedPrice(
    double discountPercent,
    double price,
  ) {

    return (price - (discountPercent / 100 * price));

  }

    
}