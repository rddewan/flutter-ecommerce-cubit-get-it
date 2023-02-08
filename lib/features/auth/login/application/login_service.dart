import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/application/ilogin_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/repository/ilogin_repository.dart';

class LoginService implements ILoginService {
 final ILoginRepository _loginRepository;
 

  LoginService(this._loginRepository);
 

  @override
  Future<bool> login(Map<String, dynamic> request) async {

    try {

      final response = await _loginRepository.login(request);   

      return response.userId >= 1 ? true : false;    
      
    } on Failure catch (_) {
      rethrow ;    
    }
    
  }
  
  
  
}