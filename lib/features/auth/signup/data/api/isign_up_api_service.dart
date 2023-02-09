import 'package:http/http.dart' as http;


abstract class ISignUpApiService {

  Future<http.Response> signUp(Map<String, dynamic> request);

}