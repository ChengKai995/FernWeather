import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/weather_provider.dart';
import '../widgets/forecast_tile.dart';
import '../widgets/weather_card.dart';

/// The main screen of FernWeather.
///
/// Shows current weather and a 5-day forecast. The user can search by city or
/// use their current GPS location.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<WeatherProvider>().loadWeatherForCurrentLocation();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _onSearch() {
    final city = _searchController.text.trim();
    if (city.isEmpty) return;
    FocusScope.of(context).unfocus();
    context.read<WeatherProvider>().loadWeatherForCity(city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FernWeather'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.my_location),
            tooltip: 'Use my location',
            onPressed: () {
              _searchController.clear();
              FocusScope.of(context).unfocus();
              context.read<WeatherProvider>().loadWeatherForCurrentLocation();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _SearchBar(
            controller: _searchController,
            focusNode: _searchFocusNode,
            onSearch: _onSearch,
          ),
          Expanded(child: _Body()),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onSearch;

  const _SearchBar({
    required this.controller,
    required this.focusNode,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Search city…',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: onSearch,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide.none,
          ),
          filled: true,
        ),
        onSubmitted: (_) => onSearch(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (context, provider, _) {
        switch (provider.status) {
          case WeatherStatus.initial:
            return const _PlaceholderView();
          case WeatherStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case WeatherStatus.error:
            return _ErrorView(message: provider.errorMessage ?? 'Unknown error');
          case WeatherStatus.loaded:
            return _LoadedView(provider: provider);
        }
      },
    );
  }
}

class _PlaceholderView extends StatelessWidget {
  const _PlaceholderView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.cloud,
            size: 80,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          ),
          const SizedBox(height: 16),
          Text(
            'Welcome to FernWeather',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Search a city or use your location',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  const _ErrorView({required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  final WeatherProvider provider;
  const _LoadedView({required this.provider});

  @override
  Widget build(BuildContext context) {
    final weather = provider.currentWeather!;
    final forecast = provider.forecast;

    return RefreshIndicator(
      onRefresh: () async {
        if (provider.searchCity.isNotEmpty) {
          await provider.loadWeatherForCity(provider.searchCity);
        } else {
          await provider.loadWeatherForCurrentLocation();
        }
      },
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        children: [
          WeatherCard(weather: weather),
          if (forecast != null) ...[
            const SizedBox(height: 24),
            Text(
              '5-Day Forecast',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            ...forecast.dailySummaries.asMap().entries.map(
                  (entry) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ForecastTile(
                      item: entry.value,
                      isToday: entry.key == 0,
                    ),
                  ),
                ),
          ],
        ],
      ),
    );
  }
}
