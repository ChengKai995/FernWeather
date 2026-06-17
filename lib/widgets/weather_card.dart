import 'package:flutter/material.dart';

import '../models/weather.dart';
import '../utils/formatters.dart';

/// Displays the current weather summary in a large card.
class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      color: theme.colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weather.cityName,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      weather.country,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                Image.network(
                  iconUrl(weather.iconCode),
                  width: 72,
                  height: 72,
                  errorBuilder: (_, __, ___) =>
                      const Icon(Icons.wb_cloudy, size: 72),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              formatTemperature(weather.temperature),
              style: theme.textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.w300,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            Text(
              capitalize(weather.description),
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _StatItem(
                  icon: Icons.thermostat,
                  label: 'Feels like',
                  value: formatTemperature(weather.feelsLike),
                ),
                _StatItem(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '${weather.humidity}%',
                ),
                _StatItem(
                  icon: Icons.air,
                  label: 'Wind',
                  value: '${weather.windSpeed.toStringAsFixed(1)} m/s',
                ),
                _StatItem(
                  icon: Icons.compress,
                  label: 'Pressure',
                  value: '${weather.pressure} hPa',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _StatItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.onPrimaryContainer;
    return Column(
      children: [
        Icon(icon, size: 20, color: color.withOpacity(0.7)),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: color.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
