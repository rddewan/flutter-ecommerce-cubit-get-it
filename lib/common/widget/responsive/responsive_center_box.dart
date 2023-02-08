
import 'package:ecommerce_cubit_getit/common/class/break_point.dart';
import 'package:flutter/material.dart';

class ResponsiveCenterBox extends StatelessWidget {
  final double breakPoint;
  final Widget child;
  const ResponsiveCenterBox({
    Key? key,
    this.breakPoint = BreakPoint.tablet,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: breakPoint,
        child: child,
      ),
    );
  }
}