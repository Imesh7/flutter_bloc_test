import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../core/exception/server_exeption.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/dto/employee.dart';
import '../../domain/usecase/home_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeUsecase) : super(LoadingHomeState()) {
    on<InitialHomeEvent>(fetchData);
  }

  final HomeUsecase _homeUsecase;
  late List<Employee> employeeList;

  void fetchData(InitialHomeEvent event, Emitter<HomeState> emit) async {
    try {
      emit(LoadingHomeState());
      employeeList = await _homeUsecase(NoParams());
      emit(SuccessHomeState(employeeList));
    } on ServerException catch (e) {
      emit(FailedHomeState(e.errorMessage));
    } 
  }
}
