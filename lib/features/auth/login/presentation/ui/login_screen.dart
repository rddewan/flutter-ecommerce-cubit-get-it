

import 'package:ecommerce_cubit_getit/common/class/break_point.dart';
import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/mixin/input_validation_mixin.dart';
import 'package:ecommerce_cubit_getit/common/styles/dimens.dart';
import 'package:ecommerce_cubit_getit/common/widget/app_scaffold.dart';
import 'package:ecommerce_cubit_getit/common/widget/form/custom_text_form_field.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/ui/widget/login_button_widget.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/ui/widget/login_error_widget.dart';
import 'package:ecommerce_cubit_getit/features/auth/login/presentation/ui/widget/login_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  final String? from;
  const LoginScreen({this.from, Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with InputValidationMixin{

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title:  Text('Login'.hardcoded), 
      widget: Center(
        child: SizedBox(
          width: BreakPoint.tablet,
          child: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: kMedium,),
            
                    const LoginErrorWidget(),
            
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
                        context.read<LoginCubit>().setFormData(
                          key: 'email', 
                          value: value,
                        );

                        return null;
                      },
                    ),
            
                    const SizedBox(height: kMedium,),
            
                    LoginPasswordWidget(
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
            
                    LoginButtonWidget(onPressed: _login),
            
                    const SizedBox(height: kMedium,),
            
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?".hardcoded),
                        const SizedBox(width: kMedium,),
                        GestureDetector(
                          onTap: () => GoRouter.of(context).push('/login/signUp'),
                          child: Text("Register Now!".hardcoded),
                        ),
                      ],
                    )
            
                  ],
            
                ),
              ),
            ),
          ),
        ),
      ),
      
    );   
    
  }

  void _login() {
    final isValid = _formKey.currentState?.validate();

    if (isValid != null && isValid) {
      context.read<LoginCubit>().login();
    }
  }
}