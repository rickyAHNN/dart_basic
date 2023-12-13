import 'dart:io';

main() async {}

/*
sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고,
있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
(async - await 사용할 것)

 */

Future abc(String sample, String sample_copy) async {
  File ssample = File(sample);
  File ssample_copy = File(sample_copy);
  try {
    final test = await ssample.readAsString();

    if (test.contains('한석봉')) {
      ssample.toString().replaceAll('한석봉', '김석봉');
    }
    ssample_copy.writeAsString(test);
  } catch (e) {
    print(e);
  }
}
