
import 'package:ecommerce_cubit_getit/core/http/uri_provider.dart';
import 'package:ecommerce_cubit_getit/core/route/go_router_provider.dart';
import 'package:ecommerce_cubit_getit/core/route/notifier/go_router_notifier.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/application/ilogin_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/application/login_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/api/ilogin_api_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/api/login_api_service.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/repository/ilogin_repository.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/data/repository/login_repository.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:http/http.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void serviceLocatorInit() { 
  getIt.registerFactory<GoRouterNotifier>(() => GoRouterNotifier());
  getIt.registerSingleton<GoRouterProvider>(GoRouterProvider());
  getIt.registerSingleton<Client>(Client());
  getIt.registerSingleton<UriProvider>(UriProvider());
  getIt.registerLazySingleton<ILoginApiService>(() => LoginApiService(getIt()));
  getIt.registerLazySingleton<ILoginRepository>(() => LoginRepository(getIt()));
  getIt.registerLazySingleton<ILoginService>(() => LoginService(getIt.get<ILoginRepository>()));
  getIt.registerFactory(() => LoginCubit(getIt.get<ILoginService>()));

}