part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadingHomeState extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SuccessHomeState extends HomeState {
  final List<Employee> employeeList;

  SuccessHomeState(this.employeeList);
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FailedHomeState extends HomeState {
  late final String errorMessage;

  FailedHomeState(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
