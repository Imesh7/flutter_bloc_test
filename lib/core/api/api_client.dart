import 'package:dio/dio.dart';
import 'package:flutter_clean_test/utils/constant.dart';

class ApiClient {
  Dio dio;
  ApiClient(this.dio) {
    setupDio();
  }

  setupDio() {
    dio.options = BaseOptions(
        baseUrl: Constant.baseUrl,
        connectTimeout: Constant.connectionTimeout,
        receiveTimeout: Constant.receiveTimeout,
        contentType: 'application/json');
  }
}
