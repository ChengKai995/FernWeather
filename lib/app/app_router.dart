import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

import "../pages/splash/splash_page.dart";
import "../pages/weather/weather_page.dart";
import "app_routes.dart";

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoutes.weather,
        builder: (context, state) => const WeatherPage(),
      ),
    ],
  );
});
