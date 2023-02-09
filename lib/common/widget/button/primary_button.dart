
import 'package:ecommerce_cubit_getit/common/styles/dimens.dart';
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
          fit: FlexFit.tight,
          child: FilledButton.tonal(
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.all(kSmall),
            ),
            onPressed: isEnabled ? onPressed : null, 
            child: isLoading
            ? const Padding(
              padding: EdgeInsets.all(kSmall),
              child: CircularProgressIndicator.adaptive(),
            )
            : Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                .textTheme
                .headlineSmall,
            ),
          ),)
      ],
    );
  }
}