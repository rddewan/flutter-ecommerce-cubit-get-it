
import 'package:ecommerce_cubit_getit/features/auth/login/data/dto/response/login_response.dart';

abstract class ILoginRepository {
  Future<LoginResponse> login(Map<String,dynamic> request);
}