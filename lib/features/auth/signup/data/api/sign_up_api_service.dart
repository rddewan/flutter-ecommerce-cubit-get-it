
import 'package:ecommerce_cubit_getit/core/http/uri_provider.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/api/isign_up_api_service.dart';
import 'package:http/http.dart' as http;

class SignUpApiService implements ISignUpApiService{
  final http.Client client;

  SignUpApiService(this.client);

  @override
  Future<http.Response> signUp(Map<String, dynamic> request) async {
    try {

      final url = getIt.get<UriProvider>().getBaseUri(
        '/api/v1/register',
      );

      return  await client.post(url,body: request);

    } catch (e) {
      rethrow;
    }
  }
  

}