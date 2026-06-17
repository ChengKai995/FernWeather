# FernWeather

A Flutter weather application that shows current conditions and a 5-day forecast for any city or your current GPS location.

## Features

- 🌍 **GPS-based weather** – automatically fetches weather for your current location on launch
- 🔍 **City search** – type any city name to get its current weather and forecast
- 📅 **5-day forecast** – one representative entry per day, closest to noon
- 🔄 **Pull-to-refresh** – swipe down to reload the latest data
- 🌙 **Dark mode** – follows your system theme

## Screenshots

| Home (loaded) | Forecast |
|---|---|
| *(screenshot)* | *(screenshot)* |

## Getting started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) ≥ 3.10
- A free [OpenWeatherMap API key](https://openweathermap.org/api)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/ChengKai995/FernWeather.git
   cd FernWeather
   ```

2. Copy the env file and add your API key:
   ```bash
   cp .env .env.local   # optional – .env is already tracked but safe to override
   ```
   Edit `.env` and replace `your_api_key_here` with your real key:
   ```
   OPENWEATHER_API_KEY=abc123...
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Running tests

```bash
flutter test
```

## Architecture

```
lib/
├── main.dart              # App entry point & MaterialApp setup
├── models/
│   └── weather.dart       # Weather & Forecast data models
├── services/
│   └── weather_service.dart  # OpenWeatherMap HTTP client
├── providers/
│   └── weather_provider.dart # State management (ChangeNotifier)
├── screens/
│   └── home_screen.dart   # Main UI screen
├── widgets/
│   ├── weather_card.dart  # Current-conditions card
│   └── forecast_tile.dart # Single forecast day tile
└── utils/
    └── formatters.dart    # Temperature, date & icon helpers
```

## License

MIT
