import 'dart:io';

//
// main() {
//   final file = File('file.txt');
//   final file2 = File('file2.txt');
//   file.writeAsStringSync('hello world');
//   final Copy copyFile = Copy(source: file.toString());
//   copyFile.copyWith(source: file.toString(), target: file2.toString());
//   print(copyFile);
// }
//
// class Copy {
//   final String source;
//   final String? target;
//
//   Copy({required this.source, this.target});
//
//   Copy copyWith({
//     String? source,
//     String? target,
//   }) {
//     return Copy(
//       source: source ?? this.source,
//       target: target ?? this.target,
//     );
//   }
//
//   @override
//   String toString() {
//     return 'Copy{source: $source, target: $target}';
//   }
// }
main() {


  print(copy);
}

void copy(String source, String target) {
  File file = File(source);
  File file2 = File(target);

  List readFile = file.readAsBytesSync();

}
