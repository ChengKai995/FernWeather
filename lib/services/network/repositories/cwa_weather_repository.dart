import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../core/models/api_result.dart";
import "../../../domain/weather/weather_forecast.dart";
import "../../../domain/weather/weather_forecast_mapper.dart";
import "../../../domain/weather/weather_repository.dart";
import "../api_client/weather_api_client.dart";
import "base_repository.dart";

class CwaWeatherRepository extends BaseRepository implements WeatherRepository {
  CwaWeatherRepository(this._api);

  final WeatherApiClient _api;
  CancelToken? _cancelToken;

  @override
  Future<ApiResult<List<WeatherForecast>>> get36hForecast({
    String? locationName,
  }) async {
    _cancelToken?.cancel("superseded by new request");
    final token = CancelToken();
    _cancelToken = token;

    final result = await safeCall(
      () => _api.get36hForecast(
        locationName: locationName,
        cancelToken: token,
      ),
    );

    switch (result) {
      case Success(:final data):
        if (data.success != "true") {
          return const ApiResult.failure("無法取得天氣預報資料");
        }
        return ApiResult.success(mapToWeatherForecasts(data));
      case Failure(:final message, :final statusCode):
        return ApiResult.failure(message, statusCode: statusCode);
      case Cancelled():
        return const ApiResult.cancelled();
    }
  }
}

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  final api = ref.watch(weatherApiClientProvider);
  return CwaWeatherRepository(api);
});
