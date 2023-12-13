import 'dart:convert';

//위 함수를 사용하여 director 가 누군지 출력해 보시오
main() async {
  final a = await getMovieInfo();
  final b = jsonDecode(a);
  print(b['director']);
}

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 1));
  final mockData = {
    "title": "Star Wars",
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}
