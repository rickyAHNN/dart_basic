import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      map['name'] as String,
      map['age'] as int,
    );
  }
}

class Department {
  String name;
  Employee leader;

  Department({
    required this.name,
    required this.leader,
  });

  Map<String, dynamic> toJson() {
    return {'name': name, 'leader': leader.toJson()};
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
        name: map['name'] as String,
        leader: Employee.fromJson(map['leader'] as Map<String, dynamic>));
  }
}

main() {
  File file = File('company.txt');
  final Employee employee = Employee('Hong-Gil-Dong', 41);
  print(employee.toJson());
  Department department = Department(name: 'team1', leader: employee);
  print(department.toJson());
  print(jsonEncode(department));
  file.writeAsStringSync(department.toJson().toString());
}
