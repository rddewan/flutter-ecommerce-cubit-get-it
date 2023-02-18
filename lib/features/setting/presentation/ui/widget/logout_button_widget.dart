
import 'package:ecommerce_cubit_getit/common/class/break_point.dart';
import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/extensions/text_theme.dart';
import 'package:ecommerce_cubit_getit/common/styles/dimens.dart';
import 'package:ecommerce_cubit_getit/common/widget/button/primary_button.dart';
import 'package:flutter/material.dart';


class LogoutButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const LogoutButtonWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: SizedBox(
              width: BreakPoint.tablet,
              child: PrimaryButton(
                text: 'Logout'.hardcoded,
                isEnabled: true,
                isLoading: false,
                onPressed: onPressed,
              ),
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.warning,
                color: Colors.orange,
                size: kMedium,
              ),
      
              const SizedBox(width: kSmall,),
      
              Text(
                'you will be logged out from the app.'.hardcoded,
                style: context.textTheme.labelSmall,
              ),
            ],
          )
        ],
      ),
    );
  }
}