import "package:flutter/material.dart";

import "../../../domain/weather/weather_forecast.dart";

class WeatherSuccessView extends StatelessWidget {
  const WeatherSuccessView({super.key, required this.forecasts});

  final List<WeatherForecast> forecasts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: forecasts.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, i) => _ForecastCard(forecast: forecasts[i]),
    );
  }
}

class _ForecastCard extends StatelessWidget {
  const _ForecastCard({required this.forecast});

  final WeatherForecast forecast;

  @override
  Widget build(BuildContext context) {
    final timeRange = _formatTimeRange(forecast.startTime, forecast.endTime);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              forecast.locationName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            if (timeRange != null) ...[
              const SizedBox(height: 4),
              Text(
                timeRange,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
            const Divider(height: 24),
            ...forecast.elements.map((e) => _ElementRow(element: e)),
          ],
        ),
      ),
    );
  }

  static String? _formatTimeRange(DateTime? start, DateTime? end) {
    if (start == null && end == null) return null;
    return "${_fmt(start)} ~ ${_fmt(end)}";
  }

  static String _fmt(DateTime? dt) {
    if (dt == null) return "-";
    String two(int n) => n.toString().padLeft(2, "0");
    return "${dt.month}/${dt.day} ${two(dt.hour)}:${two(dt.minute)}";
  }
}

class _ElementRow extends StatelessWidget {
  const _ElementRow({required this.element});

  final WeatherForecastElement element;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              element.type.label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: Text(element.value)),
        ],
      ),
    );
  }
}
