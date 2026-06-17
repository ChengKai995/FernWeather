import "package:dio/dio.dart";
import "package:flutter/foundation.dart";

import "../../../core/models/api_result.dart";

abstract class BaseRepository {
  @protected
  Future<ApiResult<T>> safeCall<T>(Future<T> Function() call) async {
    try {
      final data = await call();
      return ApiResult.success(data);
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) {
        return ApiResult.cancelled();
      }
      return ApiResult.failure(
        _readableMessage(e),
        statusCode: e.response?.statusCode,
      );
    } catch (e, stack) {
      if (kDebugMode) {
        debugPrint("[safeCall] Unexpected error: $e\n$stack");
      }
      return ApiResult.failure("發生未知錯誤，請稍後再試");
    }
  }

  String _readableMessage(DioException error) {
    final response = error.response;

    if (response != null) {
      final data = response.data;
      if (data is String && data.trim().isNotEmpty) return data.trim();
      return "請求失敗 (${response.statusCode})";
    }

    return switch (error.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout =>
        "請求超時，請稍後再試",
      DioExceptionType.connectionError => "網路連線失敗，請檢查網路設定",
      DioExceptionType.badCertificate => "SSL 憑證驗證失敗",
      _ => "網路錯誤，請稍後再試",
    };
  }
}
