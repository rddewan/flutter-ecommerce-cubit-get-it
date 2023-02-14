

import 'package:ecommerce_cubit_getit/features/auth/login/presentation/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginErrorWidget extends StatelessWidget {
  const LoginErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMsg = context.watch<LoginController>().state.errorMsg;

    if (errorMsg == null) {
      return const SizedBox.shrink();
    }

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