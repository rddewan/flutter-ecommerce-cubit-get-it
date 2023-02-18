import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/features/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:ecommerce_cubit_getit/features/dashboard/presentation/state/dashboard_state.dart';
import 'package:ecommerce_cubit_getit/features/dashboard/presentation/ui/widget/cart_badge_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => DashboardController(),
      child: BlocBuilder<DashboardController, DashboardState>(
        builder: (context, state) {
          return NavigationBar(
            selectedIndex: state.pageIndex,
            onDestinationSelected: (value) => _onItemTapped(context,value),
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.home),
                label: 'Home'.hardcoded,
              ),
              NavigationDestination(
                icon: const Icon(Icons.shop_rounded),
                label: 'Product'.hardcoded,
              ),
              NavigationDestination(
                selectedIcon: const CartBadgeWidget(
                  child: Icon(Icons.shopify),
                ),
                icon: const CartBadgeWidget(
                  child: Icon(Icons.shopping_bag),
                ),
                label: 'Cart'.hardcoded,
              ),
              NavigationDestination(
                icon: const Icon(Icons.settings),
                label: 'Setting'.hardcoded,
              ),
            ],
          );
        },
      ),
    );
  }

  void _onItemTapped(BuildContext context, int index) {
    context.read<DashboardController>().setPageIndex(index);

    switch (index) {
      case 0:
        GoRouter.of(context).go('/');
        break;
      case 1:
        GoRouter.of(context).go('/product');
        break;
      case 2:
        GoRouter.of(context).go('/cart');
        break;
      case 3:
        GoRouter.of(context).go('/setting');
        break;
      default:
    }
  }
}
