
import 'package:ecommerce_cubit_getit/common/class/number_format_util.dart';
import 'package:ecommerce_cubit_getit/core/env/env_reader.dart';
import 'package:ecommerce_cubit_getit/core/http/uri_provider.dart';
import 'package:ecommerce_cubit_getit/core/route/go_router_provider.dart';
import 'package:ecommerce_cubit_getit/core/route/notifier/go_router_notifier.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/application/ilogin_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/application/login_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/api/ilogin_api_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/api/login_api_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/repository/ilogin_repository.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/repository/login_repository.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/cubit/login_controller.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/application/isign_up_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/application/sign_up_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/api/isign_up_api_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/repository/isign_up_repository.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/data/repository/sign_up_repository.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/controller/signup_controller.dart';
import 'package:ecommerce_cubit_getit/features/home/application/home_service.dart';
import 'package:ecommerce_cubit_getit/features/home/application/ihome_service.dart';
import 'package:ecommerce_cubit_getit/features/home/data/api/home_api_service.dart';
import 'package:ecommerce_cubit_getit/features/home/data/api/ihome_api.dart';
import 'package:ecommerce_cubit_getit/features/home/data/repository/home_repository.dart';
import 'package:ecommerce_cubit_getit/features/home/data/repository/ihome_repository.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/controller/home_controller.dart';
import 'package:http/http.dart';
import 'package:get_it/get_it.dart';

import '../features/auth/signup/data/api/sign_up_api_service.dart';

final getIt = GetIt.instance;

void serviceLocatorInit() { 
  getIt.registerSingleton<GoRouterNotifier>(GoRouterNotifier());
  getIt.registerSingleton<GoRouterProvider>(GoRouterProvider());
  getIt.registerSingleton<Client>(Client());
  getIt.registerSingleton<UriProvider>(UriProvider());

  // Login Feature
  getIt.registerLazySingleton<ILoginApiService>(() => LoginApiService(getIt()));
  getIt.registerLazySingleton<ILoginRepository>(() => LoginRepository(getIt()));
  getIt.registerLazySingleton<ILoginService>(() => LoginService(getIt.get<ILoginRepository>()));
  getIt.registerFactory(() => LoginController(getIt.get<ILoginService>()));

  // SignUp Feature
  getIt.registerLazySingleton<ISignUpApiService>(() => SignUpApiService(getIt()));
  getIt.registerLazySingleton<ISignUpRepository>(() => SignUpRepository(getIt()));
  getIt.registerLazySingleton<ISignUpService>(() => SignUpService(getIt.get<ISignUpRepository>()));
  getIt.registerFactory(() => SignUpController(getIt.get<ISignUpService>()));

  // Home Feature
  getIt.registerLazySingleton<EnvReader>(() => EnvReader());
  getIt.registerLazySingleton<NumberFormatUtil>(() => NumberFormatUtil());
  getIt.registerLazySingleton<IHomeApiService>(() => HomeApiService(getIt()));
  getIt.registerLazySingleton<IHomeRepository>(() => HomeRepository(getIt()));
  getIt.registerLazySingleton<IHomeService>(() => HomeService(
    getIt.get<IHomeRepository>(),
    getIt.get<EnvReader>(),
    getIt.get<NumberFormatUtil>()
  ));
  getIt.registerFactory(() => HomeController(getIt.get<IHomeService>()));

  

}