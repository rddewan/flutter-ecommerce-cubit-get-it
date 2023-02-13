
import 'package:ecommerce_cubit_getit/common/error/no_route_screen.dart';
import 'package:ecommerce_cubit_getit/core/route/notifier/go_router_notifier.dart';
import 'package:ecommerce_cubit_getit/core/route/route_name.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/ui/login_screen.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/ui/signup_screen.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');

class GoRouterProvider {
  final notifier = getIt.get<GoRouterNotifier>();
  bool isDuplicate = false;

  GoRouter goRouter() {

    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      refreshListenable: notifier,
      redirect: (context, state) {
        final isLoggedIn = notifier.isLoggedIn;
        final isGoingToLogin = state.subloc == '/login';
        final isGoingToNoInternet = state.location == '/noInternet';
        final isGoingToSignUp = state.location == '/login/signUp';

        if (!isDuplicate) {
          if (isLoggedIn) {
            if (isGoingToLogin || isGoingToSignUp) {
              isDuplicate = true;
              return '/';
            }
          } else {
            if (!isGoingToLogin && !isGoingToSignUp && !isGoingToNoInternet) {
              isDuplicate = true;              
              return '/login?from=${state.subloc}';
            }
          }
        }

        if (isDuplicate) {
          isDuplicate = false;
        }

        return null;
      },
      routes: <RouteBase>[
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/',
          name: homeRoute,
          builder: (context, state) => HomeScreen(key: state.pageKey),
        ),

        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/login',
          name: loginRoute,
          builder: (context, state) {
            final from = state.queryParams['from'];
            return LoginScreen(key: state.pageKey, from: from);
          },
          routes: [
            GoRoute(
              path: 'signUp',
              name: signUpRoute,
              builder: (context, state) => SignUpScreen(key: state.pageKey),
            ),
          ],
        ),
        
      ],
      errorBuilder: (context, state) => NoRouteScreen(
        key: state.pageKey,
      ),
    );

  }

}
