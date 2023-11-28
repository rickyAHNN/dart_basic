//일반주석
import 'package:flutter/material.dart';

///문서화 주석
/* 장문주석 */

//void 함수는 값을 반환하지 않는다

//타입 지정된 함수
int add(int a, int b){
  return a+b; }

//화살표 함수
int add2(int a, int b) => a+b;

//String(첫글자 대문자)
String add3 = "string";
//bool YES or NO
bool add4 = false;
//var 시스템 알아서 타입 찾아줌
var add5 = "sstr";
//리스트
List<int> add6=[1,2,3,4,5];
//if-else
/*int ifa = 23;


if(ifa < 50){
print("object");
}else{
  print("oddbject");
}*/


//switch 조건문
// String add7 = "show";
// Switch(add7){
//   case "ssow" :
//     print('dsf');
//     break;
//     case "show":
//       print("df");
//       break;
//       default :
//         print("df");}

//for - in 문
// List<int> aLss = [1,2,3,4,5];
// for(int aLs in aLss){
//   print(aLs);
// }

//while 문
// int while1 = 1 ;
// while(count < 5) {
// print('object');
// while1++;}

//do 문
// int do1 = 1;
// do{
// print('object');
// do1++;
// }while(1<10);

//late 키워드(계산기 처럼 선언후 값이 뒤에 입력이 될때 미리 선언한다)
// late String name;
// print("my name is $name");
// name = alice;

//instance 실습
// Class Person{
//   String name;
//   int age;
//   Person(this.name, this.age);
//
//   printInfo(){
// print("name $name");
// print("age $age");
//   }
// }
// var person = Person('john do, 30');
// person.printInfo();


///변수는 프로그램에서 값을 저장하고 참조할때 사용하는 중요 개념
//변수는 선언(var name;)과 초기화(var name = 2;)와 타입(int name;)이 필요하다
///함수가 다른함수의 인수로 활용가능하다

///final, const : 변경이 불가능하게 값을 할당한다

///다트의 함수는 일급객체이다(다른객체들에 연산을 모두 지원) 함수를 변수처럼 활용가능

///객체지향 각각의 객체를 모듈화
///object : 데이터 혹은 기능이 정의되어있으며 프로그래밍상으로 활용가능한것
///class : object의 데이터와 기능이 정의되어있는 설계도(class의 최종결과물은 object)
///instance : 클래스를 복제하여 활용
///

