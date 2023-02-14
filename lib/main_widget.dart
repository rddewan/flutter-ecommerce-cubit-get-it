import 'package:ecommerce_cubit_getit/core/route/go_router_provider.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/controller/login_controller.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  void initState() {    
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      getIt.get<LoginController>().getAccessToken();
    });
  }
  @override
  Widget build(BuildContext context) {
    final goRouter = getIt.get<GoRouterProvider>().goRouter();
    
    return MaterialApp.router(
      title: 'e-Commerce',
      routerConfig: goRouter,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
