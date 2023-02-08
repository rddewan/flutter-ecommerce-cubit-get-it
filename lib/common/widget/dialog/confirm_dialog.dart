

import 'package:ecommerce_cubit_getit/common/styles/dimens.dart';
import 'package:ecommerce_cubit_getit/common/widget/widget_key.dart';
import 'package:flutter/material.dart';


mixin ConfirmDialog {
  
  Future<void> showConfirmDialog(
    {
      required BuildContext context, 
      required String title, 
      required String msg,
      required String btnYesText,
      required String btnNoText,
      bool barrierDismissible = true,
      required VoidCallback onYesTap,
      required VoidCallback onNoTap,
    }
  ) {
    
    final textTheme = Theme.of(context).textTheme;

    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => barrierDismissible,
          child: AlertDialog(          
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kSmall),
            ),
            content: Container(
              padding: const EdgeInsets.only(
                top: kXLarge,
                bottom: kMedium,
                left: kMedium,
                right: kMedium,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [ 
                  const Icon(Icons.info),   
                  const SizedBox(height: kMedium),           
                  Text(title, style: textTheme.headline4),
                  const SizedBox(height: kMedium),
                  Text(
                    msg,
                    style: textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                                 
                  const SizedBox(height: kLarge),

                  ElevatedButton.icon(
                    key: btnNoKey,
                    onPressed: onNoTap, 
                    icon: const Icon(Icons.close), 
                    label: Text(btnNoText),
                  ),

                  ElevatedButton.icon(
                    key: btnYesKey,
                    onPressed: onYesTap, 
                    icon: const Icon(Icons.check), 
                    label: Text(btnYesText),
                  )        
                                    
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}