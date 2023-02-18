
import 'package:flutter/material.dart';

class CartBadgeWidget extends StatelessWidget {
  final Widget? child;
  const CartBadgeWidget({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const badgeCount = 4;
    
    return Badge(    
      //largeSize: Platform.isIOS ? 20 : null,     
      isLabelVisible: badgeCount > 0 ? true : false,
      label: badgeCount < 1 ? const SizedBox.shrink() : const Text('$badgeCount'),
      child: child,
    )
    ;
  }
}