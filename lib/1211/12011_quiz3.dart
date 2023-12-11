class Employee{
  String name;
  int age;

  Employee({
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'age': this.age,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      name: map['name'] as String,
      age: map['age'] as int,
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

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'leader': this.leader,
    };
  }

  factory Department.fromMap(Map<String, dynamic> map) {
    return Department(
      name: map['name'] as String,
      leader: map['leader'] as Employee,
    );
  }

}

final Department Hong = Department(name: 'Hong-Gil-Dong', leader: );