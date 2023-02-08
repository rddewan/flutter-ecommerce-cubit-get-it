
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget {

  const CustomTextFormField({
    Key? key,
    ValueKey? textFieldKey,
    required String labelText,
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isObscureText = false,
    required TextInputType keyboardType,
    required TextInputAction textInputAction,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
    String? Function(String?)? onChanged,
    required TextEditingController controller,
  }) : 
  _textFieldKey = textFieldKey,
  _labelText = labelText,
  _hintText = hintText,
  _prefixIcon = prefixIcon,
  _suffixIcon = suffixIcon,
  _validator = validator,
  _isObscureText = isObscureText,
  _controller = controller, 
  _onChanged = onChanged,
  _keyboardType = keyboardType,
  _textInputAction = textInputAction,
  _inputFormatters = inputFormatters,
  super(key: key);

  final ValueKey? _textFieldKey;
  final TextEditingController _controller;
  final String _labelText;
  final String? _hintText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final bool _isObscureText;
  final TextInputType _keyboardType;
  final TextInputAction _textInputAction;
  final List<TextInputFormatter>? _inputFormatters;
  final String? Function(String?)? _validator;
  final String? Function(String?)? _onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String _value = "";

  @override
  void initState() {    
    super.initState();
    widget._controller.addListener(() => setTextValue());
  }

  @override
  void dispose() {
    widget._controller.removeListener(() => setTextValue());
    super.dispose();
  }

  void setTextValue() {
    setState(() {
      _value = widget._controller.text;
    });
  }


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget._textFieldKey,   
      controller: widget._controller,
      obscureText: widget._isObscureText,  
      keyboardType: widget._keyboardType,  
      textInputAction: widget._textInputAction,         
      decoration: InputDecoration(
        labelText: widget._labelText,
        hintText: widget._hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: widget._prefixIcon,
        suffixIcon: _value.isNotEmpty ? widget._suffixIcon : null,   
               
      ),
      inputFormatters: widget._inputFormatters,
      validator: widget._validator,
      onChanged: widget._onChanged,
    );
  }
}