import 'package:ecommerce_cubit_getit/core/route/go_router_provider.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/ui/login_screen.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = GoRouterProvider();
    return MaterialApp.router(
      title: 'e-Commerce',
      routerConfig: goRouter.goRouter(),
      theme: ThemeData(
        useMaterial3: true,       
        primarySwatch: Colors.blue,
      ),      
    );
  }
}