import 'package:ecommerce_cubit_getit/core/route/go_router_provider.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/controller/login_controller.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/controller/home_controller.dart';
import 'package:ecommerce_cubit_getit/features/setting/presentation/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {

  @override
  void initState() {    
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    final goRouter = getIt.get<GoRouterProvider>().goRouter();
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<LoginController>()),        
        BlocProvider(create: (context) => getIt.get<HomeController>()),
        BlocProvider(create: (context) => getIt.get<SettingController>()),   
      ],
      child: MaterialApp.router(
        title: 'e-Commerce',
        routerConfig: goRouter,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
