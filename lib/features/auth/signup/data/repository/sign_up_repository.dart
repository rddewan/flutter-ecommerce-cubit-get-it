
import 'dart:io';

import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/core/extension/http_response_error.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/api/isign_up_api_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/dto/sign_up_response.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/repository/isign_up_repository.dart';

class SignUpRepository implements ISignUpRepository {
  final ISignUpApiService _signUpApiService;

  SignUpRepository(this._signUpApiService); 


  @override
  Future<SignUpResponse> signUp(Map<String, dynamic> request) async {
    try {

      final response = await _signUpApiService.signUp(request);

      if (response.statusCode != HttpStatus.created) {
        throw Failure(message: response.httpErrorHandler());
      }

      return signUpResponseFromJson(response.body);
      
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
  
}