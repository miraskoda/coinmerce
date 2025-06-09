import 'package:intl/intl.dart';

extension DollarExtension on num {
  String toDollar() {
    final formatter = NumberFormat.currency(symbol: r'$', decimalDigits: 2, locale: 'en_US');
    return formatter.format(this);
  }

  String toCompactDollar() {
    final formatter = NumberFormat.compactCurrency(symbol: r'$', decimalDigits: 2, locale: 'en_US');
    return formatter.format(this);
  }

  String toDollarWithSign() {
    final formatter = NumberFormat.currency(symbol: r'$', decimalDigits: 2, locale: 'en_US');
    final formatted = formatter.format(abs());
    return this >= 0 ? '+$formatted' : '-$formatted';
  }
}
