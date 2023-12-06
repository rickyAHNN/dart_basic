/*
컴퓨터, 책 을 표현하는, 다음과 같은 두개의 클래스생성
유형자산(TangibleAsset) 이라는 이름의 추상클래스를 작성 하시오.
또, Computer 나 Book 은 그 부모 클래스를 활용한 형태로 수정 하시오.
 */
class Book extends TangibleAsset {
  String isbl;

  Book(
    super.weight, {
    required super.name,
    required super.price,
    required super.color,
    required this.isbl,
  });
}

class Computer extends TangibleAsset {
  String makerName;

  Computer(
    super.weight, {
    required this.makerName,
    required super.name,
    required super.price,
    required super.color,
  });
}

/*
자산인지 아닌지 따지지 말고, 형태가 있는 것 (Thing) 이면, 무게가 있다
그래서, double 형으로 무게(weight)를 얻을 수 있도록 getter/setter를 가지는 인터페이스 Thing 을 만드시오
유형자산 (TangibleAsset) 은, 자산 (Asset) 의 일종이며, 형태가 있는 것 (Thing) 의 일종이기도 하다.
 */

abstract interface class Thing {
  double get weight;
  set weight(double weight);
}

//무형자산도 유형자산도 자산(Asset)의 일종이다.
abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}

/*
또한, (가) 에 들어가는 추상 클래스를 개발하고, 이 클래스를 상속하도록 TangibleAsset 를 수정하시오.
이 정의에 맞도록 TangibleAsset 의 소스 코드를 수정하시오.
이 때, TangibleAsset 에 필드나 메소드의 추가가 필요하다면, 적당히 추가하시오.
 */
abstract class TangibleAsset extends Asset implements Thing {
  //implements로 불러온것은 무조건 구현해야한다 오버라이드로
  String color;
//유형자산이기때문에 컬러
  @override
  //재정의
  double weight;
  TangibleAsset(
    this.weight, {
    required super.name,
    required super.price,
    required this.color,
  });
}

//무형자산(IntangibleAsset) 도 관리하려고 생각하고 있다.
abstract class IntangibleAsset extends Asset {

  IntangibleAsset ({
    //무형자산이기때문에 컬러x
    required super.name,
    required super.price,
  });
}

//무형자산에는, 예를들어 특허권(Patent) 등이 있다.
abstract class Patent extends IntangibleAsset {
  int quantity;

  Patent ({
    required super.name,
    required super.price,
    required this.quantity,
  });
}

main() {}
