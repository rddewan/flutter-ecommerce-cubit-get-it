

import 'package:ecommerce_cubit_getit/common/mixin/input_validation_mixin.dart';
import 'package:ecommerce_cubit_getit/common/widget/form/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPasswordWidget extends StatelessWidget with InputValidationMixin{
 final TextEditingController passwordController;
 final String labelText;
 final String hintText;
 final String formKey;
 final List<String? Function(String?)> validators;

 SignUpPasswordWidget({
    Key? key, 
    required this.passwordController,
    required this.labelText,
    required this.hintText,
    required this.formKey,
    required this.validators,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isObscure = true;

    return CustomTextFormField(
      labelText: labelText, 
      hintText: hintText,
      keyboardType: TextInputType.visiblePassword, 
      textInputAction: TextInputAction.next, 
      controller: passwordController,
      isObscureText: isObscure,
      prefixIcon: IconButton(
        onPressed: () {
          }, 
        icon: isObscure ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
      ),
      suffixIcon: IconButton(
        onPressed: () {
          passwordController.clear();                    
        }, 
        icon: const Icon(Icons.clear),
      ),
      validator: combine(
        validators,
      ),
      onChanged: (String? value) {
        
        return null;
      },
    );
  }
}