



import 'package:ecommerce_cubit_getit/core/http/uri_provider.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/api/ilogin_api_service.dart';
import 'package:http/http.dart' as http;


class LoginApiService implements ILoginApiService{
  final http.Client client;

  LoginApiService(this.client);

  @override
  Future<http.Response> login(Map<String, dynamic> request) async {
    try {

      final url = getIt.get<UriProvider>().getBaseUri(
        '/api/v1/login',
      );

      return  await client.post(url,body: request);

    } catch (e) {
      rethrow;
    }
    
  }
}
