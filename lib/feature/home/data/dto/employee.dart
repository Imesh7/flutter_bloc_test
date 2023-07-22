// To parse this JSON data, do
//
//     final employee = employeeFromMap(jsonString);

import 'dart:convert';



class Employee {
    final String id;
    final String? address;
    final String? name;
    final String? avatar;
    final String? department;

    Employee({
        required this.id,
        this.address,
        this.name,
        this.avatar,
        this.department,
    });

    factory Employee.fromMap(Map<String, dynamic> json) => Employee(
        id: json["id"],
        address: json["address"],
        name: json["name"],
        avatar: json["avatar"],
        department: json["department"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "createdAt": address,
        "name": name,
        "avatar": avatar,
        "department": department,
    };
}
