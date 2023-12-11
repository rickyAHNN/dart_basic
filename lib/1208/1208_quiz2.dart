//모음인지 알려주는

main() {
  Word word = Word('abcde');

  print(word);
}

class Word {
  String word = '';

  Word(this.word);

  @override
  String toString() {
    return 'Word{word: $word}';
  }

// List<String> Ee = ['a','e','i','o','u','A','E','I','O','U'];
//   bool isVowel(int i, String Ee) {
//     return word.substring(i, i + 1) == Ee;

  bool isVowel(int i) {
    return word.substring(i, i + 1) == 'a' ||
        word.substring(i, i + 1) == 'e' ||
        word.substring(i, i + 1) == 'i' ||
        word.substring(i, i + 1) == 'o' ||
        word.substring(i, i + 1) == 'u' ||
        word.substring(i, i + 1) == 'A' ||
        word.substring(i, i + 1) == 'E' ||
        word.substring(i, i + 1) == 'I' ||
        word.substring(i, i + 1) == 'O' ||
        word.substring(i, i + 1) == 'U';
  }
}

//자음인지 알려주는
class Word2 {
  String word = '';

  Word2(this.word);

  bool isVowel(int i) {
    return word.substring(i, i + 1) == 'a' ||
        word.substring(i, i + 1) == 'e' ||
        word.substring(i, i + 1) == 'i' ||
        word.substring(i, i + 1) == 'o' ||
        word.substring(i, i + 1) == 'u';
  }

  bool isConsonant(int i) {
    if (word.substring(i, i + 1) != 'a' ||
        word.substring(i, i + 1) != 'e' ||
        word.substring(i, i + 1) != 'i' ||
        word.substring(i, i + 1) != 'o' ||
        word.substring(i, i + 1) != 'u' ||
        word.substring(i, i + 1) != 'A' ||
        word.substring(i, i + 1) != 'E' ||
        word.substring(i, i + 1) != 'I' ||
        word.substring(i, i + 1) != 'O' ||
        word.substring(i, i + 1) != 'U') {
      return true;
    } else {
      return false;
    }
  }
}
