main() {
  final numString = '10';
  try {
    int num = int.parse(numString);
  } catch (error) {
    print('에러의 이유는 : $error');
    // throw FormatException('강제 에러 발생?$e');
  } finally {
    print('0');
  }
}
