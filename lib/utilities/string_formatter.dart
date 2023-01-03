import 'package:intl/intl.dart';

class StringFormatter {
  /// DateTime => 19/05
  static String dateTimeToStringDateMonth(DateTime? date) {
    try {
      return DateFormat('dd/MM', Intl.getCurrentLocale()).format(date!);
    } catch (e) {
      return '-';
    }
  }
}
