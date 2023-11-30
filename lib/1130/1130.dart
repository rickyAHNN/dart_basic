void example() {
  List<int> intList = [1, 2, 3, 4, 5];
  for (int integer = 0; integer < intList.length; integer++) {
//integer == 1, 2, 3, 4, 5 각 각
    print(integer);
  }
  for (int integer in intList) {
//integer == 1, 2, 3, 4, 5 각 각
    print(integer);
  }
  intList.forEach((integer) {
//integer == 1, 2, 3, 4, 5 각 각
    print(integer);
  });
//람다식
  intList.forEach((integer) => print(integer)); //integer == 1, 2, 3, 4, 5 각 각
}

class Hero{
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack(){}
}

class Car {
  List<Door> doors = [];
  String color = 'red';
void drive(){}
}

class Door {}