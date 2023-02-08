
import 'package:flutter/material.dart';

class SignUpErrorWidget extends StatelessWidget {
  const SignUpErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMsg = null;

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