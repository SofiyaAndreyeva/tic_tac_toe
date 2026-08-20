extension DateTimeExtension on DateTime {
  String toFormattedString() {
    return '$day-$month-$year';
  }
}
