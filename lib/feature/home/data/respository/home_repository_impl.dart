import 'package:dio/dio.dart';

import '../../../../core/api/api_client.dart';
import '../../../../core/exception/exception_handler.dart';
import '../../../../core/exception/server_exeption.dart';
import '../../domain/repository/home_repositroy.dart';
import '../dto/employee.dart';

class HomeRepositoryImpl extends HomeRepository {
  final ApiClient _apiClient;

  HomeRepositoryImpl(this._apiClient);

  @override
  Future<List<Employee>> fetchEmployee() async {
    try {
      Response response = await _apiClient.dio.get('users');
      return List.from(response.data).map((e) => Employee.fromMap(e)).toList();
    } on DioException catch (e) {
      throw ExceptionHandler.dioErrorHanlder(e);
    } catch (e) {
      throw ServerException("Unexpected Exception : $e");
    }
  }
}
