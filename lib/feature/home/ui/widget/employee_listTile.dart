import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../data/dto/employee.dart';

class EmployeeListTile extends StatelessWidget {
  final Employee employee;
  const EmployeeListTile({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.pushRoute(DetailRoute(employee: employee));
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(employee.avatar!),
      ),
      title: Text(employee.name.toString()),
      subtitle: Text(employee.department!),
    );
  }
}
