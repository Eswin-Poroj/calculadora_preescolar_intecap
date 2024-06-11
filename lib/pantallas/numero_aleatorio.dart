// numero_aleatorio.dart
import 'dart:math';

class NumeroAleatorio {
  int num1 = 0;
  int num2 = 0;
  int total = 0;
  List<int> resultado = [];
  final _ale = Random();
  late int num3, posicion;

  void aleatorio() {
    num1 = _ale.nextInt(100);
    num2 = _ale.nextInt(100);
    total = num1 + num2;
    posicion = _ale.nextInt(3);
    resultado.clear(); // Limpiar la lista antes de agregar nuevos números
    for (int x = 0; x < 4; x++) {
      num3 = _ale.nextInt(100);
      while (total == num3) {
        num3 = _ale.nextInt(100);
      }
      resultado.add(num3);
    }
    resultado.insert(posicion, total);
  }
}
