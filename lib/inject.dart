import 'package:dio/dio.dart';
import 'package:flutter_clean_test/core/routes/app_router.gr.dart';
import 'package:flutter_clean_test/feature/home/domain/usecase/home_usecase.dart';
import 'package:get_it/get_it.dart';

import 'core/api/api_client.dart';
import 'feature/home/data/respository/home_repository_impl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  //Api client
  getIt.registerSingleton<ApiClient>(ApiClient(getIt<Dio>()));
  //Respoitory impl
  getIt.registerSingleton<HomeRepositoryImpl>(
      HomeRepositoryImpl(getIt<ApiClient>()));
  // Use case
  getIt
      .registerSingleton<HomeUsecase>(HomeUsecase(getIt<HomeRepositoryImpl>()));
}
