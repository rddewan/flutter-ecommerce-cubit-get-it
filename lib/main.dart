import 'package:ecommerce_cubit_getit/core/route/notifier/go_router_notifier.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/cubit/login_controller.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/controller/signup_controller.dart';
import 'package:ecommerce_cubit_getit/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  serviceLocatorInit();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<LoginController>()),
        BlocProvider(create: (context) => getIt.get<SignUpController>()),
      ],
    child: const MainWidget()),
  );
}



