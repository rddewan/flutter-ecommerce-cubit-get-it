

import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:flutter/material.dart';


class LoginErrorWidget extends StatelessWidget {
  const LoginErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMsg = '';
    return Center(
          child: Text(
            errorMsg,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.redAccent,
            ),
          ),
        );  
    
  }
}