import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import 'package:fernweather/models/weather.dart';
import 'package:fernweather/services/weather_service.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  setUpAll(() {
    registerFallbackValue(Uri());
  });

  group('Weather model', () {
    test('fromJson parses correctly', () {
      final json = _weatherJson();
      final weather = Weather.fromJson(json);

      expect(weather.cityName, 'London');
      expect(weather.country, 'GB');
      expect(weather.temperature, closeTo(15.0, 0.01));
      expect(weather.humidity, 72);
      expect(weather.description, 'light rain');
      expect(weather.iconCode, '10d');
    });

    test('toJson round-trips', () {
      final original = Weather.fromJson(_weatherJson());
      final restored = Weather.fromJson(original.toJson());

      expect(restored.cityName, original.cityName);
      expect(restored.temperature, original.temperature);
      expect(restored.humidity, original.humidity);
    });
  });

  group('ForecastItem model', () {
    test('fromJson parses correctly', () {
      final item = ForecastItem.fromJson(_forecastItemJson());
      expect(item.temperature, closeTo(18.0, 0.01));
      expect(item.iconCode, '01d');
    });
  });

  group('Forecast.dailySummaries', () {
    test('returns one item per day, closest to noon', () {
      final items = [
        _makeForecastItem(DateTime(2024, 6, 10, 9)),
        _makeForecastItem(DateTime(2024, 6, 10, 12)),
        _makeForecastItem(DateTime(2024, 6, 10, 15)),
        _makeForecastItem(DateTime(2024, 6, 11, 6)),
        _makeForecastItem(DateTime(2024, 6, 11, 12)),
      ];
      final forecast = Forecast(cityName: 'Paris', country: 'FR', items: items);
      final summaries = forecast.dailySummaries;

      expect(summaries.length, 2);
      expect(summaries[0].dateTime.hour, 12);
      expect(summaries[1].dateTime.hour, 12);
    });
  });

  group('WeatherService', () {
    late MockHttpClient mockClient;
    late WeatherService service;

    setUp(() {
      mockClient = MockHttpClient();
      service = WeatherService(apiKey: 'test_key', client: mockClient);
    });

    test('fetchCurrentWeatherByCity returns Weather on 200', () async {
      when(() => mockClient.get(any())).thenAnswer(
        (_) async => http.Response(jsonEncode(_weatherJson()), 200),
      );

      final weather = await service.fetchCurrentWeatherByCity('London');
      expect(weather.cityName, 'London');
    });

    test('fetchCurrentWeatherByCity throws on 404', () async {
      when(() => mockClient.get(any())).thenAnswer(
        (_) async => http.Response('{"cod":"404","message":"city not found"}', 404),
      );

      expect(
        () => service.fetchCurrentWeatherByCity('NoSuchCity'),
        throwsA(isA<WeatherServiceException>()),
      );
    });

    test('fetchCurrentWeatherByCity throws on 401', () async {
      when(() => mockClient.get(any())).thenAnswer(
        (_) async => http.Response('{"cod":401}', 401),
      );

      expect(
        () => service.fetchCurrentWeatherByCity('London'),
        throwsA(isA<WeatherServiceException>()),
      );
    });

    test('fetchForecastByCity returns Forecast on 200', () async {
      when(() => mockClient.get(any())).thenAnswer(
        (_) async => http.Response(jsonEncode(_forecastJson()), 200),
      );

      final forecast = await service.fetchForecastByCity('London');
      expect(forecast.cityName, 'London');
      expect(forecast.items, isNotEmpty);
    });

    test('fetchCurrentWeatherByCoords passes lat/lon in URL', () async {
      Uri? capturedUri;
      when(() => mockClient.get(any())).thenAnswer((invocation) async {
        capturedUri = invocation.positionalArguments.first as Uri;
        return http.Response(jsonEncode(_weatherJson()), 200);
      });

      await service.fetchCurrentWeatherByCoords(51.5, -0.1);

      expect(capturedUri?.queryParameters['lat'], '51.5');
      expect(capturedUri?.queryParameters['lon'], '-0.1');
    });
  });
}

// ── Helpers ──────────────────────────────────────────────────────────────────

Map<String, dynamic> _weatherJson() => {
      'name': 'London',
      'sys': {'country': 'GB'},
      'main': {
        'temp': 15.0,
        'feels_like': 14.2,
        'temp_min': 12.5,
        'temp_max': 17.3,
        'humidity': 72,
        'pressure': 1012,
      },
      'wind': {'speed': 3.5},
      'weather': [
        {'description': 'light rain', 'icon': '10d'},
      ],
      'dt': 1717891200,
      'visibility': 10000,
    };

Map<String, dynamic> _forecastItemJson() => {
      'dt': 1717891200,
      'main': {
        'temp': 18.0,
        'feels_like': 17.5,
        'temp_min': 15.0,
        'temp_max': 20.0,
        'humidity': 60,
        'pressure': 1015,
      },
      'wind': {'speed': 2.0},
      'weather': [
        {'description': 'clear sky', 'icon': '01d'},
      ],
    };

Map<String, dynamic> _forecastJson() => {
      'city': {'name': 'London', 'country': 'GB'},
      'list': [_forecastItemJson()],
    };

ForecastItem _makeForecastItem(DateTime dateTime) => ForecastItem(
      dateTime: dateTime,
      temperature: 20.0,
      tempMin: 15.0,
      tempMax: 22.0,
      description: 'clear sky',
      iconCode: '01d',
      humidity: 50,
      windSpeed: 2.0,
    );
