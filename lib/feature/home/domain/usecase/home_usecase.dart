
import '../../../../core/exception/server_exeption.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/dto/employee.dart';
import '../repository/home_repositroy.dart';

class HomeUsecase implements Usecase<List<Employee>, NoParams> {
  HomeRepository homeRepository;

  HomeUsecase(this.homeRepository);

  @override
  Future<List<Employee>> call(params) async {
    try {
      return await homeRepository.fetchEmployee();
    } on ServerException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
