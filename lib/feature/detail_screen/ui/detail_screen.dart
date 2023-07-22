import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../home/data/dto/employee.dart';

@RoutePage()
class DetailScreen extends StatefulWidget {
  final Employee employee;
  const DetailScreen({super.key, required this.employee});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail screen"),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(widget.employee.avatar!),
                          ),
                        ),
                      ),
                      Text(
                        widget.employee.name.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Employ Adres :"),
                      Text(widget.employee.address!),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Dept name:"),
                      Text(widget.employee.department!),
                    ],
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
