
import 'package:http/http.dart' as http;

abstract class ILoginApiService {
  Future<http.Response> login(Map<String, dynamic> request);
}