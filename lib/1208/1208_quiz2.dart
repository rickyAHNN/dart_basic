//모음인지 알려주는

main() {
  Word word =  Word('abcde');

  print(word);
}
class Word {
  String word = '';

  Word(this.word);

  @override
  String toString() {
    return 'Word{word: $word}';
  }

List<String> Ee = ['a','e','i','o','u','A','E','I','O','U'];
  bool isVowel(int i, String Ee) {
    return word.substring(i, i + 1) == Ee;

  // bool isVowel(int i) {
  //   return word.substring(i, i + 1) == 'a'||
  //       word.substring(i, i + 1) == 'e' ||
  //       word.substring(i, i + 1) == 'e' ||
  //       word.substring(i, i + 1) == 'i' ||
  //       word.substring(i, i + 1) == 'o' ||
  //       word.substring(i, i + 1) == 'u' ;
  }
}

//자음인지 알려주는
class Word2 {
  String word = '';

  Word2(this.word);

  bool isVowel(int i) {
    return word.substring(i, i + 1) == 'a' ||
        i.toString() == 'e' ||
        i.toString() == 'i' ||
        i.toString() == 'o' ||
        i.toString() == 'u';
  }

  bool isConsonant(int i) {
    if (word.substring(i, i + 1) != 'a' ||
        i.toString() != 'e' ||
        i.toString() != 'i' ||
        i.toString() != 'o' ||
        i.toString() != 'u') {
      return true;
    } else {
      return false;
    }
  }
}


