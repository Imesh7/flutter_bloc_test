import 'package:dio/dio.dart';
import 'package:flutter_clean_test/core/exception/server_exeption.dart';

class ExceptionHandler {
  static DioException dioErrorHanlder(DioException dioExcption) {
    switch (dioExcption.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerException("Connection Timeout");
      case DioExceptionType.receiveTimeout:
        throw ServerException("Received Timeout");
      case DioExceptionType.badResponse:
        throw ServerException("Bad Response");
      case DioExceptionType.unknown:
        throw ServerException(
            "Please check internet connection or unknown error");
      default:
        throw checkTheStatusCode(dioExcption.response!);
    }
  }

  static ServerException checkTheStatusCode(Response<dynamic>? response) {
    switch (response!.statusCode) {
      case 400:
        throw ServerException(response.data['message'] ?? "400 error");
      case 401:
        throw ServerException(response.data['message'] ?? "401 error");

      case 402:
        throw ServerException(response.data['message'] ?? "402 error");

      case 403:
        throw ServerException(response.data['message'] ?? "403 error");

      case 404:
        throw ServerException(response.data['message'] ?? "404 error");

      //so on

      default:
        throw ServerException("Uncaught exception");
    }
  }
}
