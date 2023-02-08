
import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/widget/button/primary_button.dart';
import 'package:flutter/material.dart';


class LoginButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const LoginButtonWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = false;
    return PrimaryButton(
      text: 'LogIn'.hardcoded,
      isEnabled: isLoading ? false : true,
      isLoading: isLoading,
      onPressed: onPressed,
    );
  }
}