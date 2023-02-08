
import 'package:ecommerce_cubit_getit/common/mixin/input_validation_mixin.dart';
import 'package:ecommerce_cubit_getit/common/widget/checkbox/check_box_widget.dart';
import 'package:flutter/material.dart';

class TermsConditionsCheckboxWidget extends StatelessWidget with InputValidationMixin {
  TermsConditionsCheckboxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isChecked = false;

    return CheckboxWidget(
      title: 'Terms and conditions', 
      subtitle: 'Please accept the terms and conditions', 
      value: isChecked, 
      validator: (value) {
        return isValidTermsAndConditions(
          value, 
          'Please accept the terms and conditions',
        );
      },
      onChanged: (value) {
        
      },
    );
  }
}