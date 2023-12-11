import 'dart:io';

main() {
  final file = File('file.txt');
  file.writeAsStringSync('contents');
}

void copy(String source, String target) {
  File file = File(source);
  File file2 = File(target);

  String text = file.readAsStringSync();
  file2.writeAsStringSync(text);
}
