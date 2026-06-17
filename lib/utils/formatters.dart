import 'package:intl/intl.dart';

/// Formats a temperature value with the Celsius symbol.
String formatTemperature(double temp) {
  return '${temp.round()}°C';
}

/// Returns a short weekday name from a [DateTime].
String formatWeekday(DateTime dateTime) {
  return DateFormat('EEE').format(dateTime);
}

/// Returns a formatted time string (e.g. "14:30").
String formatTime(DateTime dateTime) {
  return DateFormat('HH:mm').format(dateTime);
}

/// Returns the full URL for an OpenWeatherMap weather icon.
String iconUrl(String iconCode) {
  return 'https://openweathermap.org/img/wn/$iconCode@2x.png';
}

/// Capitalizes the first letter of each word in [text].
String capitalize(String text) {
  return text
      .split(' ')
      .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
      .join(' ');
}

/// Converts wind speed (m/s) to a descriptive label.
String windDescription(double speed) {
  if (speed < 1) return 'Calm';
  if (speed < 6) return 'Light breeze';
  if (speed < 12) return 'Moderate breeze';
  if (speed < 20) return 'Strong breeze';
  return 'Gale';
}
