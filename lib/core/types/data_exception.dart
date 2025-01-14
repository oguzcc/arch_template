import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Err implements Exception {
  Err(Object error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.cancel:
          message = 'Request to API server was cancelled';
        case DioExceptionType.connectionTimeout:
          message = 'Connection timeout with API server';
        case DioExceptionType.receiveTimeout:
          message = 'Receive timeout in connection with API server';
        case DioExceptionType.badResponse:
          final data = error.response?.data as Map<String, dynamic>?;
          message = data?['message'] as String? ?? '';
          if (!kDebugMode) {
            message = _handleError(
              error.response?.statusCode,
              data ?? {},
            );
          }

        case DioExceptionType.sendTimeout:
          message = 'Send timeout in connection with API server';
        case DioExceptionType.connectionError:
          if (error.message!.contains('SocketException')) {
            message = 'No Internet';
          }
          message = 'Unexpected error occurred';
        case DioExceptionType.unknown:
          message = 'Unexpected error occurred';
        case DioExceptionType.badCertificate:
          message = 'Bad certificate';
      }
    } else if (error is TypeError) {
      message = error.toString();
    }
  }

  late String message;

  // ignore: unused_element
  String _handleError(int? statusCode, Map<String, dynamic> error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return 'Not Found';
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
