import "package:freezed_annotation/freezed_annotation.dart";

import "../../domain/weather/weather_forecast.dart";

part "weather_state.freezed.dart";

@freezed
sealed class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = WeatherLoading;

  const factory WeatherState.success(List<WeatherForecast> forecasts) =
      WeatherSuccess;

  const factory WeatherState.error(
    String message, {
    int? statusCode,
  }) = WeatherError;
}
