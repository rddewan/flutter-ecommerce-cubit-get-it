import 'package:ecommerce_cubit_getit/features/dashboard/presentation/ui/widget/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  final Widget child;

  const DashboardScreen({Key? key, required this.child}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:widget.child ,
      bottomNavigationBar: const BottomNavigationWidget(),
    );
    
  }
}