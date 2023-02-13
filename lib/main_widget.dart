import 'package:ecommerce_cubit_getit/core/route/go_router_provider.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

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
