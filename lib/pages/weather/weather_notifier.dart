import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../core/models/api_result.dart";
import "../../core/utils/location_name_normalizer.dart";
import "../../services/network/repositories/cwa_weather_repository.dart";
import "weather_state.dart";

class WeatherNotifier extends AutoDisposeNotifier<WeatherState> {
  bool _hasSubmitted = false;

  @override
  WeatherState build() {
    var disposed = false;
    ref.onDispose(() => disposed = true);
    Future(() {
      if (disposed) return;
      fetchAll();
    });
    return const WeatherState.loading();
  }

  Future<void> search(String locationName) async {
    final normalized = normalizeCwaLocationName(locationName);
    if (normalized.isEmpty) {
      state = const WeatherState.error("請輸入城市名稱");
      return;
    }
    _hasSubmitted = true;
    await _fetch36hForecast(normalized);
  }

  Future<void> fetchAll() => _fetch36hForecast(null);

  void onSearchTextCleared() {
    if (_hasSubmitted) {
      _hasSubmitted = false;
      fetchAll();
    }
  }

  Future<void> _fetch36hForecast(String? locationName) async {
    state = const WeatherState.loading();

    final repo = ref.read(weatherRepositoryProvider);
    final result = await repo.get36hForecast(locationName: locationName);

    switch (result) {
      case Success(:final data):
        if (data.isEmpty) {
          state = WeatherState.error(
            locationName == null
                ? "查無資料"
                : "找不到「$locationName」的天氣資料，請確認城市名稱",
          );
        } else {
          state = WeatherState.success(data);
        }
      case Failure(:final message, :final statusCode):
        state = WeatherState.error(message, statusCode: statusCode);
      case Cancelled():
        break;
    }
  }
}

final weatherNotifierProvider =
    AutoDisposeNotifierProvider<WeatherNotifier, WeatherState>(
  WeatherNotifier.new,
);
