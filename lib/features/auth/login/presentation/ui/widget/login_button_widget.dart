
import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/widget/button/primary_button.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const LoginButtonWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<LoginController>().state.isLoading;
    return PrimaryButton(
      text: 'LogIn'.hardcoded,
      isEnabled: isLoading ? false : true,
      isLoading: isLoading,
      onPressed: onPressed,
    );
  }
}