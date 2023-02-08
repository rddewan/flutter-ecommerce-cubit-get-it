

import 'dart:io';

import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/core/extension/http_response_error.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/api/ilogin_api_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/dto/response/login_response.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/repository/ilogin_repository.dart';

class LoginRepository implements ILoginRepository {
  final ILoginApiService _loginApiService;

  LoginRepository(this._loginApiService);

  @override
  Future<LoginResponse> login(Map<String, dynamic> request) async {

    try {
      
      final response = await _loginApiService.login(request);

      if (response.statusCode != HttpStatus.ok) {
        throw Failure(message: response.httpErrorHandler());        
      }

      return loginResponseFromJson(response.body);
      
    } catch (e) {
        throw Failure(message: e.toString());
    }
   
  }
  
}