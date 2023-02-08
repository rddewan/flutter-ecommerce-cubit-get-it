
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final bool isEnabled;
  final VoidCallback? onPressed;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.isLoading = false,
    this.isEnabled = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
            ),
            onPressed: isEnabled ? onPressed : null, 
            child: isLoading
            ? const CircularProgressIndicator.adaptive()
            : Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                .textTheme
                .headlineSmall?.copyWith(color: Colors.white),
            ),
          ),)
      ],
    );
  }
}