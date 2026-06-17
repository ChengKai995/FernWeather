import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "weather_notifier.dart";
import "weather_state.dart";
import "widgets/weather_error_view.dart";
import "widgets/weather_loading_view.dart";
import "widgets/weather_search_bar.dart";
import "widgets/weather_success_view.dart";

class WeatherPage extends ConsumerStatefulWidget {
  const WeatherPage({super.key});

  @override
  ConsumerState<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends ConsumerState<WeatherPage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  WeatherNotifier get _notifier =>
      ref.read(weatherNotifierProvider.notifier);

  void _onChanged(String text) {
    if (text.isEmpty) {
      _notifier.onSearchTextCleared();
    }
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    _notifier.search(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weatherNotifierProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("36 小時天氣預報"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            WeatherSearchBar(
              controller: _controller,
              onSubmit: _submit,
              onChanged: _onChanged,
            ),
            Expanded(
              child: switch (state) {
                WeatherLoading() => const WeatherLoadingView(),
                WeatherSuccess(:final forecasts) =>
                  WeatherSuccessView(forecasts: forecasts),
                WeatherError(:final message, :final statusCode) =>
                  WeatherErrorView(
                    message: message,
                    statusCode: statusCode,
                  ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
