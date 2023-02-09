
import 'package:ecommerce_cubit_getit/common/widget/button/primary_button.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const SignUpButtonWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<SignUpController>().state.isLoading;
    
    return PrimaryButton(
      text: 'SignUp',
      isEnabled: isLoading ? false : true,
      isLoading: isLoading,
      onPressed: onPressed,
    );
  }
}