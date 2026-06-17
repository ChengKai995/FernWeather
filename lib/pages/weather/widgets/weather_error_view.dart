import "package:flutter/material.dart";

class WeatherErrorView extends StatelessWidget {
  const WeatherErrorView({
    super.key,
    required this.message,
    this.statusCode,
  });

  final String message;
  final int? statusCode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "查詢失敗",
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              statusCode != null ? "$message (HTTP $statusCode)" : message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
