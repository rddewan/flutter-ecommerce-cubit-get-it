import 'package:http/http.dart' as http;




abstract class IHomeApiService {

  Future<http.Response> getHomeBanner();

  Future<http.Response> getCategories();

  Future<http.Response> getBrands();

  Future<http.Response> getFeaturedProduct();

}