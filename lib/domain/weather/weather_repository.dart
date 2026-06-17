import "../../core/models/api_result.dart";
import "weather_forecast.dart";

abstract interface class WeatherRepository {
  Future<ApiResult<List<WeatherForecast>>> get36hForecast({
    String? locationName,
  });
}
