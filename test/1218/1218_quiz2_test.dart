import 'package:dart_basic/1218/1218_quiz2.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('true는 짝수가 잘 나와야 한다', () {
    expect(isEven(4), true);
  });
  test('false면 홀수가 잘 나와야 한다', () {
    expect(isEven(4), false);
  });
  test('가장 큰 숫자가 나와야 한다', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
  });
  test('문자열 뒤집기', () {
    expect(reverseString('Hello'), 'olleH');
  });
}
