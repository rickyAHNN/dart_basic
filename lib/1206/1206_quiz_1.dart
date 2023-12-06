abstract interface class X {
  void a(); // 선언
}

abstract class Y implements X {
  void b(); //추상메서드 선언 = 바디가 없음
  // void a(); Y가 추상클래스이기때문에 선택할수있다 (필수가아님)(추상메서드로 선택할수있다)
}

class A extends Y {
  String name= 'dd';
  @override
  void a() {
    print('Aa');
  } // X 클래스에서 가져온것

  @override
  void b() {
    print('Ab');
  } // Y클래스 오버라이드

  void c() {
    print('Ac');
  } // A 클래스
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }
}

void main() {
  X obj = A();
  obj.a();

  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();

  print(obj); // Instance of 'A'
  Y aa = A();
  Y bb = B();

  List<Y> aabbList = [];
  aabbList.add(aa);
  aabbList.add(bb);
  aabbList.forEach((element) {
    element.b();
  });
  print(aabbList[0]);//[Instance of 'A', Instance of 'B']
}

/*
문제 13-2 에서 이용한 A클래스나 B클래스의 인스턴스를 각각 1개씩 생성하여, List 에 차례로 담는다.
그 후에 List 의 요소를 차례대로 꺼내 각각의 인스턴스의 b() 메소드를 호출 하여야 한다. 이상을 전제로 다음 물음에 답하시오.
List 변수의 타입으로 무엇을 사용하여야 하는가
위에서 설명하고 있는 프로그램을 작성하시오

 */
