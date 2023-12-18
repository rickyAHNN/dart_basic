import 'package:http/http.dart' as http;
import 'dart:convert';

Future getTodo2(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  // return fromJson(jsonDecode(response.body));
}
