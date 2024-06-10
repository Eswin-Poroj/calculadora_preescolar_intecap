import 'dart:math';

class Resultado {
  int num1 = 0;
  int num2 = 0;

  int total = 0;
  List<int> resultado = [];
  Resultado(this.num1, this.num2, this.total, this.resultado);
}

class NumeroAaleatorio {
//  NumeroAaleatorio(int num1, int num2, int total, List<int> resultado);

  Resultado generarAleatorio() {
    final _ale = Random();
    late int num3, posicion;
    int num1 = _ale.nextInt(100);
    int num2 = _ale.nextInt(100);
    int total = num1 + num2;
    List<int> resultado1 = [];
    posicion = _ale.nextInt(3);
    for (int x = 0; x < 4; x++) {
      num3 = _ale.nextInt(100);
      while (total == num3) {
        num3 = _ale.nextInt(100);
      }
      resultado1.add(num3);
    }
    resultado1.insert(posicion, total);
    return Resultado(num1, num2, total, resultado1);
  }
}
