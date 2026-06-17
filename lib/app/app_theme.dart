import "package:flutter/material.dart";

class AppTheme {
  AppTheme._();

  static const Color _seedColor = Colors.blue;

  static AppBarTheme _appBarTheme({
    required Color background,
    required Color foreground,
  }) =>
      AppBarTheme(
        backgroundColor: background,
        foregroundColor: foreground,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
      );

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _seedColor,
          brightness: Brightness.light,
        ),
        appBarTheme: _appBarTheme(
          background: Colors.white,
          foreground: Colors.black,
        ),
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _seedColor,
          brightness: Brightness.dark,
        ),
        appBarTheme: _appBarTheme(
          background: const Color(0xFF1C1B1F),
          foreground: Colors.white,
        ),
      );
}
