

import 'package:ecommerce_cubit_getit/features/auth/signup/data/dto/sign_up_response.dart';

abstract class ISignUpRepository {
  Future<SignUpResponse> signUp(Map<String,dynamic> request);
}