import "package:flutter/foundation.dart";

class NetworkConfig {
  NetworkConfig._();

  static const String baseUrl = "https://opendata.cwa.gov.tw/api";

  static const String cwaAuthorization = String.fromEnvironment(
    "CWA_AUTH",
    defaultValue: "CWA-ABCA99C8-DA07-4315-B1B9-C0024098BCF5",
  );

  static const Duration timeout = Duration(seconds: 30);

  static bool get enableLogging => kDebugMode;

  static const Map<String, String> defaultHeaders = {
    "Accept": "application/json",
    "Content-Type": "application/json",
  };

  static Map<String, dynamic> get defaultQueryParameters => {
        "Authorization": cwaAuthorization,
        "format": "JSON",
      };
}
