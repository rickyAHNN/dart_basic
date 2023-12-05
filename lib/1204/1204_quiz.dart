/*문제 10-1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.
*/

class Wand {
  String name;
  double power;

  Wand(
    this.name,
    this.power,
  );

  //마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  set WandName(String name) {
    if (name != null && name.length > 3) {
      throw Exception('에러');
    }
  }
}

class Wizard {
  String name;
  int hp;
  Wand? wand;
  int mp;

  Wizard(this.name, this.hp, this.mp);

//마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  set WizardName(String name) {
    if (name != null && name.length > 3) {
      throw Exception('WizardName $name 에러');
    }
  }

  //지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  set WizardMp(int mp) {
    if (0.5 <= mp && mp <= 100.0) {
      throw Exception('WizardMp $mp 에러');
    }
  }

  //마법사의 지팡이는 null 일 수 없다.
  set WizardWand(Wand wand) {
    if (wand != null) {
      throw Exception('WizardWand $wand 에러');
    }
  }

  //마법사의 MP는 0 이상이어야 한다.
  set WizardMinMp(int mp) {
    if (0 <= mp) {
      throw Exception('WizardWand $mp 에러');
    }
  }

  //HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
  set WizardHp(int hp) {
    if (hp % 3 == 0) {
      this.hp = hp;
    }
  }
}
/*
다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오

대한민국의 도시 이름 모음 (순서 상관 없음) = Set
10명 학생의 시험 점수 = Map
대한민국의 도시별 인구수 (순서 상관 없음) = Map

 */

/*
컬렉션 2-2 다음을 수행하는 코드를 작성하시오.
 */

//이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.

class Person {
  String name;

  Person({
    required this.name,
  });
/*
  연습문제 2-3 에서 작성한 Person 클래스로 생성한 ‘홍길동’,
‘한석봉'의 나이를 각각 20, 25살 이라고 할 때, 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
그 다음,
   */
}
void main() {
  Wizard wizard = Wizard('df', 10, 50);
  // print('${wizard.WizardName('dfes')}');

//이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
//List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.

  Person Han = Person(name: '한석봉');
  Person Hong = Person(name: '홍길동');

  List<Person> PersonName = [Han, Hong];
  print('${PersonName.toString()}');

  /*
컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
“홍길동의 나이는 20살”
“한석봉의 나이는 25살”
   */
  Map<Person, int> PersonNameAge = {
    Han: 20,
    Hong: 25,
  };

  PersonNameAge.entries.forEach((element) {
    print(element.key.toString());
  });
  PersonNameAge.entries.forEach((element) {
    print(element.value);
  });
}
