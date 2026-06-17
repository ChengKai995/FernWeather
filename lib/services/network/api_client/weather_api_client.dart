import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:retrofit/retrofit.dart";

import "../../../data/weather/weather_one_and_a_half_days_entity.dart";
import "../dio_client.dart";

part "weather_api_client.g.dart";

@RestApi()
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio, {String baseUrl}) = _WeatherApiClient;

  @GET("/v1/rest/datastore/F-C0032-001")
  Future<WeatherOneAndAHalfDaysEntity> get36hForecast({
    @Query("locationName") String? locationName,
    @CancelRequest() CancelToken? cancelToken,
  });
}

final weatherApiClientProvider = Provider<WeatherApiClient>((ref) {
  final dio = ref.watch(dioProvider);
  return WeatherApiClient(dio);
});
