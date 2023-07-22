
import '../../data/dto/employee.dart';

abstract class HomeRepository {
  Future<List<Employee>> fetchEmployee();
}
