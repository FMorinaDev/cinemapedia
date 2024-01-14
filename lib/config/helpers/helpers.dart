import 'package:intl/intl.dart';

class Helpers {
  static String numero(double number, [int decimales = 0]){
    final numeroFormateado = NumberFormat.compactCurrency(
      decimalDigits: decimales,
      symbol: '',
      locale: 'en'
    ).format(number);

    return numeroFormateado;
  }
}