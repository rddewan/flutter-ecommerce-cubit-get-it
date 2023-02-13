
import 'package:intl/intl.dart';

class NumberFormatUtil {

  NumberFormat currencyFormatter(String currencyCode) {
    return NumberFormat.simpleCurrency(name: currencyCode);
  }
  
}