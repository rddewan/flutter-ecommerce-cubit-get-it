import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:ecommerce_cubit_getit/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  serviceLocatorInit();
  runApp(MultiBlocProvider(
    providers: [
       BlocProvider(create: (context) => getIt.get<LoginCubit>()),
    ],
    child: const MainWidget()),
  );
}



