import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'age': this.age,
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
    return {
      'name': this.name,
      'leader': {
        leader.name,
        leader.age,
      },
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['name'] as String,
      leader: map['leader'] as Employee,
    );
  }
}

main() {
  File file = File('company.txt');
  final Employee employee = Employee('Hong-Gil-Dong', 41);
  print(employee.toJson());
  Department department = Department(name: 'Hong-Gil-Dong', leader: employee);
  print(department.toJson());
  file.writeAsStringSync(department.toJson().toString());

}
