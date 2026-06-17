import "../../data/weather/weather_one_and_a_half_days_entity.dart";
import "weather_element_type.dart";
import "weather_forecast.dart";

List<WeatherForecast> mapToWeatherForecasts(
  WeatherOneAndAHalfDaysEntity entity,
) {
  final locations = entity.records?.location ?? const [];
  return locations.map(_locationToForecast).toList();
}

WeatherForecast _locationToForecast(WeatherLocation loc) {
  final elements = loc.weatherElement ?? const [];
  final firstTime = elements.firstOrNull?.time?.firstOrNull;

  final forecastElements = <WeatherForecastElement>[];
  for (final element in elements) {
    final mapped = _elementToForecastElement(element);
    if (mapped != null) {
      forecastElements.add(mapped);
    }
  }

  return WeatherForecast(
    locationName: loc.locationName ?? "-",
    startTime: firstTime?.startTime,
    endTime: firstTime?.endTime,
    elements: forecastElements,
  );
}

WeatherForecastElement? _elementToForecastElement(WeatherElement element) {
  final type = WeatherElementType.fromCode(element.elementName);
  if (type == null) return null;

  final firstTime = element.time?.firstOrNull;
  final rawName = firstTime?.parameter?.parameterName ?? "-";

  return WeatherForecastElement(
    type: type,
    value: "$rawName${type.unit}",
  );
}
