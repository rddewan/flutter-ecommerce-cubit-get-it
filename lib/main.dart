import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/controller/login_controller.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/controller/signup_controller.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/controller/home_controller.dart';
import 'package:ecommerce_cubit_getit/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await serviceLocatorInit();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<LoginController>()),        
        BlocProvider(create: (context) => getIt.get<HomeController>()),
      ],
    child: const MainWidget()),
  );
}



