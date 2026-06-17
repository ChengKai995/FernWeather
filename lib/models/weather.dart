/// Represents current weather conditions for a location.
class Weather {
  final String cityName;
  final String country;
  final double temperature;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int humidity;
  final double windSpeed;
  final String description;
  final String iconCode;
  final DateTime dateTime;
  final int visibility;
  final int pressure;

  const Weather({
    required this.cityName,
    required this.country,
    required this.temperature,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.humidity,
    required this.windSpeed,
    required this.description,
    required this.iconCode,
    required this.dateTime,
    required this.visibility,
    required this.pressure,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'] as String,
      country: (json['sys'] as Map<String, dynamic>)['country'] as String,
      temperature: (json['main']['temp'] as num).toDouble(),
      feelsLike: (json['main']['feels_like'] as num).toDouble(),
      tempMin: (json['main']['temp_min'] as num).toDouble(),
      tempMax: (json['main']['temp_max'] as num).toDouble(),
      humidity: json['main']['humidity'] as int,
      windSpeed: (json['wind']['speed'] as num).toDouble(),
      description: (json['weather'] as List<dynamic>).first['description'] as String,
      iconCode: (json['weather'] as List<dynamic>).first['icon'] as String,
      dateTime: DateTime.fromMillisecondsSinceEpoch(
        (json['dt'] as int) * 1000,
      ),
      visibility: json['visibility'] as int,
      pressure: json['main']['pressure'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': cityName,
      'sys': {'country': country},
      'main': {
        'temp': temperature,
        'feels_like': feelsLike,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'humidity': humidity,
        'pressure': pressure,
      },
      'wind': {'speed': windSpeed},
      'weather': [
        {'description': description, 'icon': iconCode},
      ],
      'dt': dateTime.millisecondsSinceEpoch ~/ 1000,
      'visibility': visibility,
    };
  }
}

/// Represents a single forecast data point (3-hour interval).
class ForecastItem {
  final DateTime dateTime;
  final double temperature;
  final double tempMin;
  final double tempMax;
  final String description;
  final String iconCode;
  final int humidity;
  final double windSpeed;

  const ForecastItem({
    required this.dateTime,
    required this.temperature,
    required this.tempMin,
    required this.tempMax,
    required this.description,
    required this.iconCode,
    required this.humidity,
    required this.windSpeed,
  });

  factory ForecastItem.fromJson(Map<String, dynamic> json) {
    return ForecastItem(
      dateTime: DateTime.fromMillisecondsSinceEpoch(
        (json['dt'] as int) * 1000,
      ),
      temperature: (json['main']['temp'] as num).toDouble(),
      tempMin: (json['main']['temp_min'] as num).toDouble(),
      tempMax: (json['main']['temp_max'] as num).toDouble(),
      description: (json['weather'] as List<dynamic>).first['description'] as String,
      iconCode: (json['weather'] as List<dynamic>).first['icon'] as String,
      humidity: json['main']['humidity'] as int,
      windSpeed: (json['wind']['speed'] as num).toDouble(),
    );
  }
}

/// Represents a 5-day weather forecast for a location.
class Forecast {
  final String cityName;
  final String country;
  final List<ForecastItem> items;

  const Forecast({
    required this.cityName,
    required this.country,
    required this.items,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    final city = json['city'] as Map<String, dynamic>;
    final list = (json['list'] as List<dynamic>)
        .map((item) => ForecastItem.fromJson(item as Map<String, dynamic>))
        .toList();
    return Forecast(
      cityName: city['name'] as String,
      country: city['country'] as String,
      items: list,
    );
  }

  /// Returns one representative [ForecastItem] per day (the noon reading).
  List<ForecastItem> get dailySummaries {
    final Map<String, ForecastItem> days = {};
    for (final item in items) {
      final dateKey =
          '${item.dateTime.year}-${item.dateTime.month.toString().padLeft(2, '0')}-${item.dateTime.day.toString().padLeft(2, '0')}';
      if (!days.containsKey(dateKey)) {
        days[dateKey] = item;
      } else {
        final existing = days[dateKey]!;
        final existingDiff = (existing.dateTime.hour - 12).abs();
        final newDiff = (item.dateTime.hour - 12).abs();
        if (newDiff < existingDiff) {
          days[dateKey] = item;
        }
      }
    }
    return days.values.toList()
      ..sort((a, b) => a.dateTime.compareTo(b.dateTime));
  }
}
