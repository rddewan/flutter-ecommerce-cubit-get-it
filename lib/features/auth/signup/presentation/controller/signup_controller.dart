

import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/application/isign_up_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/state/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpController extends Cubit<SignUpState> {
  final ISignUpService _signUpService;
  
  SignUpController(this._signUpService): super(const SignUpState());

  void signUp() async {

    try {

      emit(state.copyWith(isLoading: true, errorMsg: null));

      final result = await _signUpService.signUp(state.formData);

      emit(
        state.copyWith(
          isLoading: false,
          isSignUp: result,
        ),
      );
      
    } on Failure catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMsg: e.message,
        ),
      );
    }

  }

  void setTermsAndCondition(bool value) {    
    emit(state.copyWith(isTermsAndCondition: value));    
  }

  void setIsObscure() {
    emit(state.copyWith(isObscure: !state.isObscure));
  }

  void setFormData({required String key, required dynamic value}) {
    emit(state.copyWith(
      formData: {...state.formData, ...{key:value}},
    ));
  }

  
}