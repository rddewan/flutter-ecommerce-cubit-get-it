
import 'package:flutter/material.dart';


class CheckboxWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final bool? value;
  final FormFieldValidator<bool>? validator;
  final Function(bool?) onChanged;

  const CheckboxWidget({
    required this.title,
    required this.subtitle,
    required  this.value,
    required this.validator,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  
  @override
  Widget build(BuildContext context) {
    
    return FormField(     
      validator: widget.validator,
      builder: (field) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [          
        CheckboxListTile(
          title: Text(widget.title),
          subtitle: Text(widget.subtitle),
          value: widget.value,
          onChanged: (value){
            widget.onChanged(value);
            field.didChange(value);  
            field.validate();            
          },
        ),
        if (field.hasError) ...[
          Text(
            field.errorText!,
            style: Theme.of(context).textTheme.caption?.copyWith(
              color: Colors.red,
            ),
          ),
        ],
      ],
    ),
  );
  }
}