import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/core/local/db/hive_box_key_const.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/application/ilogin_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/repository/ilogin_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LoginService implements ILoginService {
 final ILoginRepository _loginRepository;
 final Box _box;
 

  LoginService(this._loginRepository, this._box);
 

  @override
  Future<bool> login(Map<String, dynamic> request) async {

    try {

      final response = await _loginRepository.login(request);   

      await addToBox(accessTokenKey, response.accessToken);
      final result = await addToBox(userIdKey, response.userId);

      return result;    
      
    } on Failure catch (_) {
      rethrow ;    
    }
    
  }
  
  @override
  Future<bool> addToBox<T>(String key, T? value) async {
    try {

      await _box.put(key, value);

      return true;
      
    } catch (e) {
        throw Failure(message: e.toString());  
    }
    
  }
  
  @override
  Future<T> getFromBox<T>(String key) async {
    return await _box.get(key);  
  }
  
  
  
}