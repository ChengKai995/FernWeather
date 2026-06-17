import 'package:flutter/material.dart';

import '../models/weather.dart';
import '../utils/formatters.dart';

/// Displays a single day's forecast summary in a compact tile.
class ForecastTile extends StatelessWidget {
  final ForecastItem item;
  final bool isToday;

  const ForecastTile({super.key, required this.item, this.isToday = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = isToday
        ? theme.colorScheme.secondaryContainer
        : theme.colorScheme.surfaceVariant;
    final fgColor = isToday
        ? theme.colorScheme.onSecondaryContainer
        : theme.colorScheme.onSurfaceVariant;

    return Card(
      elevation: 0,
      color: bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            SizedBox(
              width: 48,
              child: Text(
                isToday ? 'Today' : formatWeekday(item.dateTime),
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: fgColor,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Image.network(
              iconUrl(item.iconCode),
              width: 36,
              height: 36,
              errorBuilder: (_, __, ___) =>
                  const Icon(Icons.wb_cloudy, size: 36),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                capitalize(item.description),
                style: theme.textTheme.bodySmall?.copyWith(color: fgColor),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              '${formatTemperature(item.tempMin)} / ${formatTemperature(item.tempMax)}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: fgColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
