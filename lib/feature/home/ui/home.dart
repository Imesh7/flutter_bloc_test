import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_test/feature/home/ui/bloc/home_bloc.dart';
import 'package:flutter_clean_test/feature/home/ui/widget/employee_listTile.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<HomeBloc>(context).add(InitialHomeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is LoadingHomeState) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(child: CircularProgressIndicator()),
                );
              } else if (state is FailedHomeState) {
                return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text(state.errorMessage)));
              } else if (state is SuccessHomeState) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: state.employeeList.length,
                      itemBuilder: (BuildContext context, int index) =>
                          EmployeeListTile(
                        employee: state.employeeList[index],
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                        thickness: .5,
                      ),
                    ),
                  ),
                );
              } else {
                return const Center(child: Text("Invalid state"));
              }
            },
          )
        ],
      ),
    );
  }
}
