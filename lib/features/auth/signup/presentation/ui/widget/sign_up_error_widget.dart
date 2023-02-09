
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpErrorWidget extends StatelessWidget {
  const SignUpErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMsg = context.watch<SignUpController>().state.errorMsg;

    if (errorMsg == null) {
      return const SizedBox.shrink();
    }
    
    return Center(
      child: Text(
        errorMsg,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.redAccent,
            ),
      ),
    );
  }
}