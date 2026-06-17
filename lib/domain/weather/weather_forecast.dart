import "weather_element_type.dart";

class WeatherForecast {
  const WeatherForecast({
    required this.locationName,
    required this.startTime,
    required this.endTime,
    required this.elements,
  });

  final String locationName;

  final DateTime? startTime;

  final DateTime? endTime;

  final List<WeatherForecastElement> elements;
}

class WeatherForecastElement {
  const WeatherForecastElement({
    required this.type,
    required this.value,
  });

  final WeatherElementType type;

  final String value;
}
