import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

import '../models/weather.dart';
import '../services/weather_service.dart';

enum WeatherStatus { initial, loading, loaded, error }

/// ChangeNotifier that manages the weather state for the app.
class WeatherProvider extends ChangeNotifier {
  final WeatherService _service;

  WeatherProvider({required WeatherService service}) : _service = service;

  WeatherStatus _status = WeatherStatus.initial;
  Weather? _currentWeather;
  Forecast? _forecast;
  String? _errorMessage;
  String _searchCity = '';

  WeatherStatus get status => _status;
  Weather? get currentWeather => _currentWeather;
  Forecast? get forecast => _forecast;
  String? get errorMessage => _errorMessage;
  String get searchCity => _searchCity;

  /// Loads weather data for the device's current GPS location.
  Future<void> loadWeatherForCurrentLocation() async {
    _setLoading();
    try {
      final position = await _determinePosition();
      await _loadWeatherByCoords(position.latitude, position.longitude);
    } catch (e) {
      _setError(e.toString());
    }
  }

  /// Loads weather data for [city].
  Future<void> loadWeatherForCity(String city) async {
    _searchCity = city;
    _setLoading();
    try {
      final weather = await _service.fetchCurrentWeatherByCity(city);
      final forecast = await _service.fetchForecastByCity(city);
      _currentWeather = weather;
      _forecast = forecast;
      _status = WeatherStatus.loaded;
      notifyListeners();
    } on WeatherServiceException catch (e) {
      _setError(e.message);
    } catch (e) {
      _setError('Failed to load weather data. Check your internet connection.');
    }
  }

  Future<void> _loadWeatherByCoords(double lat, double lon) async {
    try {
      final weather = await _service.fetchCurrentWeatherByCoords(lat, lon);
      final forecast = await _service.fetchForecastByCoords(lat, lon);
      _currentWeather = weather;
      _forecast = forecast;
      _status = WeatherStatus.loaded;
      notifyListeners();
    } on WeatherServiceException catch (e) {
      _setError(e.message);
    } catch (e) {
      _setError('Failed to load weather data. Check your internet connection.');
    }
  }

  void _setLoading() {
    _status = WeatherStatus.loading;
    _errorMessage = null;
    notifyListeners();
  }

  void _setError(String message) {
    _status = WeatherStatus.error;
    _errorMessage = message;
    notifyListeners();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permission denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
        'Location permission permanently denied. Enable it in app settings.',
      );
    }

    return Geolocator.getCurrentPosition();
  }
}
