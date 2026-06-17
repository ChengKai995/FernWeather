import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

import "network_config.dart";

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: NetworkConfig.baseUrl,
      connectTimeout: NetworkConfig.timeout,
      receiveTimeout: NetworkConfig.timeout,
      sendTimeout: NetworkConfig.timeout,
      headers: NetworkConfig.defaultHeaders,
      queryParameters: NetworkConfig.defaultQueryParameters,
    ),
  );

  if (NetworkConfig.enableLogging) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        error: true,
        compact: false,
      ),
    );
  }

  ref.onDispose(() => dio.close(force: true));
  return dio;
});
