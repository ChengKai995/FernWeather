import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather.dart';

/// Exception thrown when a weather API call fails.
class WeatherServiceException implements Exception {
  final String message;
  const WeatherServiceException(this.message);

  @override
  String toString() => 'WeatherServiceException: $message';
}

/// Service that communicates with the OpenWeatherMap API.
///
/// Requires a valid API key set via [apiKey].
class WeatherService {
  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5';

  final String apiKey;
  final http.Client _client;

  WeatherService({required this.apiKey, http.Client? client})
      : _client = client ?? http.Client();

  /// Returns current weather for [city].
  Future<Weather> fetchCurrentWeatherByCity(String city) async {
    final uri = Uri.parse(
      '$_baseUrl/weather?q=${Uri.encodeComponent(city)}&appid=$apiKey&units=metric',
    );
    return _fetchCurrentWeather(uri);
  }

  /// Returns current weather for the given [latitude] and [longitude].
  Future<Weather> fetchCurrentWeatherByCoords(
    double latitude,
    double longitude,
  ) async {
    final uri = Uri.parse(
      '$_baseUrl/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric',
    );
    return _fetchCurrentWeather(uri);
  }

  /// Returns a 5-day forecast for [city].
  Future<Forecast> fetchForecastByCity(String city) async {
    final uri = Uri.parse(
      '$_baseUrl/forecast?q=${Uri.encodeComponent(city)}&appid=$apiKey&units=metric',
    );
    return _fetchForecast(uri);
  }

  /// Returns a 5-day forecast for the given [latitude] and [longitude].
  Future<Forecast> fetchForecastByCoords(
    double latitude,
    double longitude,
  ) async {
    final uri = Uri.parse(
      '$_baseUrl/forecast?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric',
    );
    return _fetchForecast(uri);
  }

  Future<Weather> _fetchCurrentWeather(Uri uri) async {
    final response = await _client.get(uri);
    _handleErrors(response);
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return Weather.fromJson(json);
  }

  Future<Forecast> _fetchForecast(Uri uri) async {
    final response = await _client.get(uri);
    _handleErrors(response);
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return Forecast.fromJson(json);
  }

  void _handleErrors(http.Response response) {
    if (response.statusCode == 200) return;
    if (response.statusCode == 401) {
      throw const WeatherServiceException(
        'Invalid API key. Please check your OpenWeatherMap API key.',
      );
    }
    if (response.statusCode == 404) {
      throw const WeatherServiceException(
        'City not found. Please check the city name and try again.',
      );
    }
    throw WeatherServiceException(
      'Request failed with status ${response.statusCode}.',
    );
  }
}
