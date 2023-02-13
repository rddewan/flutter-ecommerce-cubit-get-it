
import 'package:ecommerce_cubit_getit/core/http/uri_provider.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/home/data/api/ihome_api.dart';
import 'package:http/http.dart' as http;

class HomeApiService implements IHomeApiService {
  final http.Client client;

  HomeApiService(this.client); 

  @override
  Future<http.Response> getBrands() async {
    try {

      final url = getIt.get<UriProvider>().getBaseUri(
        '/api/v1/brand/getBrands',
      );

      return await http.get(url);
      
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> getCategories() async {
    try {

      final url = getIt.get<UriProvider>().getBaseUri(
        '/api/v1/category/getCategories'
      );

      return await http.get(url);
      
    } catch (e) {
      rethrow;
    }
    
  }

  @override
  Future<http.Response> getFeaturedProduct() async {
    try {

      final url = getIt.get<UriProvider>().getBaseUri(
        '/api/v1/product/featuredProduct'
      );

      return await http.get(url);
      
    } catch (e) {
      rethrow;
    }
    
  }

  @override
  Future<http.Response> getHomeBanner() async {
    try {

      final url = getIt.get<UriProvider>().getBaseUri(
        '/api/v1/banner/getHomeBannerSlider'
      );

      return await http.get(url);
      
    } catch (e) {
      rethrow;
    }
  }
  
}