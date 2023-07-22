import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_test/feature/home/domain/usecase/home_usecase.dart';
import 'package:flutter_clean_test/inject.dart';
import 'package:provider/single_child_widget.dart';
import 'feature/home/ui/bloc/home_bloc.dart';


class BlocProviders {
  static List<SingleChildWidget> providers = [
    BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(getIt<HomeUsecase>()),
    )
  ];

  
}
