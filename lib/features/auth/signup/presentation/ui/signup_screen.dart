

import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/mixin/input_phone_formatter_mixin.dart';
import 'package:ecommerce_cubit_getit/common/mixin/input_validation_mixin.dart';
import 'package:ecommerce_cubit_getit/common/styles/dimens.dart';
import 'package:ecommerce_cubit_getit/common/widget/app_scaffold_scrollable.dart';
import 'package:ecommerce_cubit_getit/common/widget/dialog/confirm_dialog.dart';
import 'package:ecommerce_cubit_getit/common/widget/form/custom_text_form_field.dart';
import 'package:ecommerce_cubit_getit/common/widget/responsive/responsive_center_box.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/ui/widget/sign_up_error_widget.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/ui/widget/signup_button_widget.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/ui/widget/signup_password_widget.dart';
import 'package:ecommerce_cubit_getit/features/auth/signup/presentation/ui/widget/terms_conditions_checkbox_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>  
  with InputValidationMixin, InputPhoneFormatter, ConfirmDialog {

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();


  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    listenSignUpStateChange();

    return AppScaffoldScrollable(
      title: const Text("SignUp"), 
      widget: ResponsiveCenterBox(
        child: Padding(
          padding: const EdgeInsets.all(kSmall),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: kMedium,),
      
                const SignUpErrorWidget(),
      
                const SizedBox(height: kMedium,),
      
                CustomTextFormField(
                  labelText: 'Name'.hardcoded, 
                  hintText: 'Enter your name'.hardcoded,
                  keyboardType: TextInputType.text, 
                  textInputAction: TextInputAction.next, 
                  controller: _nameController,
                  prefixIcon: const Icon(Icons.person),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _nameController.clear();                    
                    }, 
                    icon: const Icon(Icons.clear),
                  ),
                  validator: combine(
                    [
                      withMessage(
                        'name is empty'.hardcoded, 
                        isTextEmpty,
                      )
                    ]
                  ),
                  onChanged: (String? value) {
                    
                    return null;
                  },
                ),
      
                const SizedBox(height: kMedium,),
      
                CustomTextFormField(
                  labelText: 'Email'.hardcoded, 
                  hintText: 'Enter your email'.hardcoded,
                  keyboardType: TextInputType.emailAddress, 
                  textInputAction: TextInputAction.next, 
                  controller: _emailController,
                  prefixIcon: const Icon(Icons.email),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _emailController.clear();                    
                    }, 
                    icon: const Icon(Icons.clear),
                  ),
                  validator: combine(
                    [
                      withMessage(
                        'email is empty'.hardcoded, 
                        isTextEmpty,
                      ),
                      withMessage(
                        'email is invalid'.hardcoded, 
                        isInvalidEmail,
                      )
                    ]
                  ),
                  onChanged: (String? value) {
                    
                    return null;
                  },
                ),
      
                const SizedBox(height: kMedium,),
      
                SignUpPasswordWidget(
                  passwordController: _passwordController,
                  labelText: 'Password'.hardcoded,
                  hintText: 'Please enter your password'.hardcoded,
                  formKey: 'password'.hardcoded,
                  validators: [
                    withMessage('password is empty', isTextEmpty),
                    withMessage('invalid password', isPasswordInvalid)
                  ],
                ),
      
                const SizedBox(height: kMedium,),
      
                SignUpPasswordWidget(
                  passwordController: _confirmPasswordController,
                  labelText: 'Confirm Password'.hardcoded,
                  hintText: 'Enter your confirm password'.hardcoded,
                  formKey: 'password_confirmation'.hardcoded,
                  validators: [
                    withMessage('password is empty', isTextEmpty),
                    withMessage('invalid password', isPasswordInvalid),
                    withMessage(
                      'Password and confirm password does not match', 
                      (String? confirmPassword) {
                        final password = _passwordController.text;
                        if(confirmPassword != password) {
                          return ValidateFailResult.passwordNotMatch;
                        }
                        return null;
                      },
                    )
                  ],
                ),
                
                const SizedBox(height: kMedium,),
      
                CustomTextFormField(
                  labelText: 'Phone'.hardcoded, 
                  hintText: 'Enter your phone'.hardcoded,
                  keyboardType: TextInputType.phone, 
                  textInputAction: TextInputAction.next, 
                  controller: _phoneController,               
                  prefixIcon: const Icon(Icons.phone),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _phoneController.clear();                    
                    }, 
                    icon: const Icon(Icons.clear),
                  ),
                  inputFormatters: [
                    maskPhoneFormatter
                  ],
                  validator: combine(
                    [
                      withMessage(
                        'phone is empty'.hardcoded, 
                        isTextEmpty,
                      ),
                      withMessage(
                        'phone is invalid'.hardcoded, 
                        isInvalidPhoneNumber,
                      )
                    ]
                  ),
                  onChanged: (String? value) {
                  
      
                    return null;
                  },
                ),
      
                const SizedBox(height: kMedium,),
      
                TermsConditionsCheckboxWidget(),
      
                const SizedBox(height: kMedium,),
      
                SignUpButtonWidget(onPressed: _signUp)            
                
      
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() {
    final isValid = _formKey.currentState?.validate();

    if (isValid != null && isValid) {
    }
  }

  /// listen to signUp state change and on signUp = true then show the dialog box 
  void listenSignUpStateChange() {
    

  }

}