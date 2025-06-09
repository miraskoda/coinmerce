import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toFormattedDateTime() {
    return DateFormat('MMM dd, yyyy HH:mm').format(this);
  }

  String toFormattedDate() {
    return DateFormat('MMM dd, yyyy').format(this);
  }

  String toFormattedTime() {
    return DateFormat('HH:mm').format(this);
  }
}
