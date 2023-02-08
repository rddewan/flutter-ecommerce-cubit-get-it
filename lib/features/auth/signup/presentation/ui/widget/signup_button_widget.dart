
import 'package:ecommerce_cubit_getit/common/widget/button/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const SignUpButtonWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = false;
    return PrimaryButton(
      text: 'SignUp',
      isEnabled: isLoading ? false : true,
      isLoading: isLoading,
      onPressed: onPressed,
    );
  }
}