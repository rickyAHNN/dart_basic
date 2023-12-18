void main() {
  List<int> list = [2, 5, 1, 9, 3];

  int findmax = findMax(list);

  print(findmax);

  final String string = 'Hello';
  final String stringprint = reverseString(string);
  print(stringprint);
}

/*
짝수 판별기 함수:

입력으로 정수를 받아들이는 함수 isEven을 작성하세요.
isEven 함수는 입력된 정수가 짝수인 경우 true를 반환하고, 홀수인 경우 false를 반환해야 합니다.
예를 들어, isEven(4)는 true를 반환해야 합니다.

 */

bool isEven(int n) {
  return n % 2 == 0;
}

/*
최댓값 찾기 함수:
입력으로 숫자로 이루어진 리스트를 받아들이는 함수 findMax를 작성하세요.
findMax 함수는 입력된 리스트에서 가장 큰 값을 찾아 반환해야 합니다.
예를 들어, findMax([2, 5, 1, 9, 3])는 9를 반환해야 합니다.
 */
int findMax(List<int> list) {
  return list.reduce((a, b) => a > b ? a : b);
}

/*
문자열 뒤집기 함수:
입력으로 문자열을 받아들이는 함수 reverseString을 작성하세요.
reverseString 함수는 입력된 문자열을 뒤집어 반환해야 합니다.
예를 들어, reverseString("Hello")는 "olleH"를 반환해야 합니다.
 */

// List<String> reverseString(String string) {
//   List<String> llist = ([string]);
//   return llist.reversed.toList();
// }

// String reverseString(String string){
//   string.reve
// }
String reverseString(String string) {
  return String.fromCharCodes(string.codeUnits.reversed);
}
