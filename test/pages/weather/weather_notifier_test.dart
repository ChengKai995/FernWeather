import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:fern_quiz/core/models/api_result.dart";
import "package:fern_quiz/domain/weather/weather_element_type.dart";
import "package:fern_quiz/domain/weather/weather_forecast.dart";
import "package:fern_quiz/domain/weather/weather_repository.dart";
import "package:fern_quiz/pages/weather/weather_notifier.dart";
import "package:fern_quiz/pages/weather/weather_state.dart";
import "package:fern_quiz/services/network/repositories/cwa_weather_repository.dart";

// ---------------------------------------------------------------------------
// Fake
// Both auto-fetch (locationName: null) and explicit calls return the SAME
// result, so there is no race between the two concurrent futures.
// ---------------------------------------------------------------------------
class _FakeWeatherRepository implements WeatherRepository {
  _FakeWeatherRepository(this._result);
  final ApiResult<List<WeatherForecast>> _result;

  @override
  Future<ApiResult<List<WeatherForecast>>> get36hForecast({
    String? locationName,
  }) async =>
      _result;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
WeatherForecast _makeForecast({String locationName = "臺北市"}) =>
    WeatherForecast(
      locationName: locationName,
      startTime: DateTime(2024, 6, 1, 6),
      endTime: DateTime(2024, 6, 1, 18),
      elements: const [
        WeatherForecastElement(type: WeatherElementType.wx, value: "晴"),
      ],
    );

ProviderContainer _makeContainer(ApiResult<List<WeatherForecast>> result) {
  final c = ProviderContainer(
    overrides: [
      weatherRepositoryProvider.overrideWithValue(
        _FakeWeatherRepository(result),
      ),
    ],
  );
  addTearDown(c.dispose);
  return c;
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
void main() {
  group("WeatherNotifier", () {
    // -- initial state -------------------------------------------------------
    test("initial state is WeatherLoading", () {
      final c = _makeContainer(const ApiResult.success([]));
      expect(c.read(weatherNotifierProvider), isA<WeatherLoading>());
    });

    // -- empty / blank input (early-return path, no API call) ----------------
    test("search empty string sets error without calling API", () async {
      final c = _makeContainer(const ApiResult.success([]));
      await c.read(weatherNotifierProvider.notifier).search("");
      expect(
        c.read(weatherNotifierProvider),
        isA<WeatherError>().having(
          (s) => s.message, "message", "請輸入城市名稱",
        ),
      );
    });

    test("search whitespace-only string sets error", () async {
      final c = _makeContainer(const ApiResult.success([]));
      await c.read(weatherNotifierProvider.notifier).search("   ");
      expect(
        c.read(weatherNotifierProvider),
        isA<WeatherError>().having(
          (s) => s.message, "message", "請輸入城市名稱",
        ),
      );
    });

    // -- fetchAll success -----------------------------------------------------
    test("fetchAll success sets WeatherSuccess with forecasts", () async {
      final forecasts = [
        _makeForecast(),
        _makeForecast(locationName: "臺中市"),
      ];
      final c = _makeContainer(ApiResult.success(forecasts));
      await c.read(weatherNotifierProvider.notifier).fetchAll();

      final state = c.read(weatherNotifierProvider);
      expect(state, isA<WeatherSuccess>());
      expect((state as WeatherSuccess).forecasts.length, 2);
      expect(state.forecasts.first.locationName, "臺北市");
    });

    // -- fetchAll empty data --------------------------------------------------
    test("fetchAll with empty data sets no data error", () async {
      final c = _makeContainer(const ApiResult.success([]));
      await c.read(weatherNotifierProvider.notifier).fetchAll();

      expect(
        c.read(weatherNotifierProvider),
        isA<WeatherError>().having(
          (s) => s.message, "message", "查無資料",
        ),
      );
    });

    // -- fetchAll API failure -------------------------------------------------
    test("fetchAll API failure sets error with message and status code", () async {
      const msg = "網路連線失敗";
      final c = _makeContainer(const ApiResult.failure(msg, statusCode: 503));
      await c.read(weatherNotifierProvider.notifier).fetchAll();

      final state = c.read(weatherNotifierProvider);
      expect(state, isA<WeatherError>());
      expect((state as WeatherError).message, msg);
      expect(state.statusCode, 503);
    });

    // -- search found data ----------------------------------------------------
    test("search with valid city sets WeatherSuccess", () async {
      final c = _makeContainer(
        ApiResult.success([_makeForecast(locationName: "臺南市")]),
      );
      await c.read(weatherNotifierProvider.notifier).search("臺南市");
      expect(c.read(weatherNotifierProvider), isA<WeatherSuccess>());
    });

    // -- search not found -----------------------------------------------------
    test("search with no results sets WeatherError", () async {
      final c = _makeContainer(const ApiResult.success([]));
      await c.read(weatherNotifierProvider.notifier).search("不存在的城市");
      expect(c.read(weatherNotifierProvider), isA<WeatherError>());
    });
  });
}
