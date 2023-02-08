

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

mixin InputPhoneFormatter {
  
  var maskPhoneFormatter =  MaskTextInputFormatter(
    mask: '###-###-####', //016-196-0210
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy,
  );
}