import 'package:flutter/material.dart';

void main() {
  StrongBox key = StrongBox(keyType: KeyType.button);
  key.useKey();
}

enum KeyType { padlock, button, dial, finger }

class StrongBox<E> {
  int count = 0;
  E? _data;
  final KeyType keyType;

  StrongBox({required this.keyType});

  void put(E data) {
    _data = data;
  }

  E? get() {
    return _data;
  }

  void useKey() {
    switch (KeyType) {
      case KeyType.padlock:
        if (count < 1025) {
          print('$count회 사용');
          count++;
        }
        break;
      case KeyType.button:
        if (count < 10001) {
          print('$count회 사용');
          count++;
        }
        break;
      case KeyType.dial:
        if (count < 30001) {
          print('$count회 사용');
          count++;
        }
        break;
      case KeyType.finger:
        if (count < 1000001) {
          print('$count회 사용');
          count++;
        }
        break;
    }
  }
}
