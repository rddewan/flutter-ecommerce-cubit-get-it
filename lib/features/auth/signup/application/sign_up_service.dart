
import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/application/isign_up_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/repository/isign_up_repository.dart';

class SignUpService implements ISignUpService {
  final ISignUpRepository _signUpRepository;

  SignUpService(this._signUpRepository);
  

  @override
  Future<bool> signUp(Map<String, dynamic> request) async {

    try {

      final response = await _signUpRepository.signUp(request);

      return response.id >= 1 ? true : false;
      
      
    } on Failure catch (_) {
      rethrow;    
    }
    
    
  }
  
}