
import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/core/local/db/hive_box_key_const.dart';
import 'package:ecommerce_cubit_getit/core/route/notifier/go_router_notifier.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/application/ilogin_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/state/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginController extends Cubit<LoginState> {
  final ILoginService _loginService;
  

  LoginController(this._loginService) : super(const LoginState());

  void login() async {

    try {

      emit(state.copyWith(isLoading: true, errorMsg: null));

      final request = state.formData;
      // call api
      final result = await _loginService.login(request);
      // update login status
      getIt.get<GoRouterNotifier>().isLoggedIn = result;

      emit(state.copyWith(
        isLoading: false,
        isLoggedIn: true,
      ));
      
    } on Failure catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMsg: e.message),
      );
    }
    
  }

  void setIsObscure() {
    emit(state.copyWith(isObscure: !state.isObscure));    
  }

  void setFormData({required String key, required dynamic value}) {
    emit(state.copyWith(formData: {...state.formData, ...{key:value}}));    
  }

  void getAccessToken() async {
    final result = await _loginService.getFromBox<String?>(accessTokenKey);
    // update login status
    getIt.get<GoRouterNotifier>().isLoggedIn = result == null ? false : true;    
  }
}