class Person {
  String name = "김용연";}
void main() {
  Person a = Person();
  print(a.name);
  Person b = a;
  b.name = "잠만보";
  print(a.name);
  print(b.name);
}//얕은복사는 원본이 훼손된다.








