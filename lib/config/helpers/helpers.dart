import 'package:intl/intl.dart';

class Helpers {
  static String numero(double number){
    final numeroFormateado = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
      locale: 'en'
    ).format(number);

    return numeroFormateado;
  }
}