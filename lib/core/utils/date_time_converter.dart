import 'package:intl/intl.dart';

String convertToCustomFormat(String dateString) {
  // Parse the input date string
  DateTime dateTime = DateTime.parse(dateString);

  // Convert to local time and format
  String formattedTime = DateFormat('hh a', 'en_US').format(dateTime.toLocal());

  return formattedTime.toLowerCase();
}