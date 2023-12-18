import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Todo.dart';

main() async {
  List todo = await getTodos();
  todo.forEach((element) => print(element));
}

Future<List<Todo>> getTodos() async {
  // 요청
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  // jsonString
  final jsonString = response.body;
  // to Map
  final jsonList = jsonDecode(jsonString) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}
