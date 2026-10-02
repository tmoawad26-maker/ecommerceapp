import 'package:dio/dio.dart';
import 'package:ecommerceapp/core/utils/app_strings.dart';

class ApiException implements Exception {
  ApiException(Object error)
      : message = error is DioException
            ? _getFriendlyMessage(error)
            : AppStrings.unexpectedError,
        statusCode =
            error is DioException ? error.response?.statusCode : null,
        originalError = error;

  final String message;
  final int? statusCode;
  final Object? originalError;

  static ApiException handleException(Object error) {
    if (error is ApiException) {
      return error;
    }

    return ApiException(error);
  }

  static String _getFriendlyMessage(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return AppStrings.serverTimeout;

      case DioExceptionType.connectionError:
        return AppStrings.noInternetConnection;

      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response?.statusCode);

      case DioExceptionType.cancel:
        return AppStrings.requestCancelled;

      case DioExceptionType.unknown:
      default:
        return AppStrings.somethingWentWrong;
    }
  }

  static String _handleBadResponse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return AppStrings.invalidRequest;
      case 401:
        return AppStrings.sessionExpired;
      case 403:
        return AppStrings.forbiddenAction;
      case 404:
        return AppStrings.itemNotFound;
      case 500:
      case 502:
      case 503:
        return AppStrings.serverIssue;
      default:
        return AppStrings.unexpectedServerResponse;
    }
  }

  @override
  String toString() => 'ApiException: $message';
}
