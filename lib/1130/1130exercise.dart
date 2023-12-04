import 'dart:math';

import 'package:flutter/cupertino.dart';

class cleric {
  int HP = 50;
  final int MaxHP = 50;
  String name;
  int MP = 10;
  final int MaxMP = 10;

  cleric(this.HP, this.name, this.MP);

  void selfAid() {
    final int MP = -5;
    final int MaxHP = 50;
    final int MaxMP = 50;
  }

  Pray pray = Pray(3);
}

class Pray {
  int i = 1;
  int healSecond;
  Random heal = Random();

  Pray(@required this.healSecond);

  void healRecovery(int healSecond) {
    int healing = heal.nextInt(3);
    int healings = healing + healSecond;

    for (i = 1; i <= 50; i++) {
      print("$healings 만큼 회복되었습니다.");
    }
  }
}
