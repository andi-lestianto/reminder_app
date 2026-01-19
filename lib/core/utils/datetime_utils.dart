import 'package:intl/intl.dart';

class DateTimeUtils {
  const DateTimeUtils._();

  /// Returns current date time in string format 'MMMM d, yyyy'
  /// e.g., May 5, 2024
  static String getDateTimeNow() {
    final dateFormat = DateFormat('MMMM d, yyyy');
    return dateFormat.format(DateTime.now());
  }

  /// Returns day abbreviation from given [dateTime]
  /// e.g., Mon, Tue, Wed
  static String getDayAbbrFromDateTime(DateTime dateTime) {
    final dayFormat = DateFormat('E');
    return dayFormat.format(dateTime);
  }

  /// Returns day from given [dateTime]
  /// e.g., 1, 2, 3
  static String getDayFromDateTime(DateTime dateTime) {
    final dayFormat = DateFormat('d');
    return dayFormat.format(dateTime);
  }

  /// Checks if the given [dateTime] is the same as today's date
  /// Returns true if it is the same day, month, and year as today
  static bool isSameWithNow(DateTime dateTime) {
    final now = DateTime.now();
    return dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day;
  }

  static bool isSameDate(DateTime dateTime1, DateTime dateTime2) {
    return dateTime1.year == dateTime2.year &&
        dateTime1.month == dateTime2.month &&
        dateTime1.day == dateTime2.day;
  }

  /// Returns time from given [dateTime] in string format 'hh:mm'
  /// e.g., 08:30, 14:45
  static String getTimeFromDateTime(DateTime dateTime) {
    final timeFormat = DateFormat('HH:mm');
    return timeFormat.format(dateTime);
  }
}
