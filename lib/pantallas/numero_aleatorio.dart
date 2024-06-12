// numero_aleatorio.dart
import 'dart:math';

int oportunidades = 0, nivel = 1, puntuaje = 0;
List<dynamic> mejorJugador = [90, 70, 50];

class NumeroAleatorio {
  int puntajeFinal = 0;
  dynamic num1 = 0, num2 = 0, total = 0, num3 = 0;
  String operador = '';
  String operacion = '';
  late int posicion;
  List<dynamic> resultado = [];
  final _ale = Random();
  void mejorPuntuacion() {
    bool entrada = false;
    for (int x = 2; x >= 0; x--) {
      if (puntuaje > mejorJugador[x] && entrada == false) {
        mejorJugador.removeAt(x);
        mejorJugador.insert(x, puntuaje);
        entrada = true;
      }
    }
  }

  void aleatorio() {
    num1 = _ale.nextInt(100);
    num2 = _ale.nextInt(100);
    posicion = _ale.nextInt(4);
    resultado.clear();
    for (int x = 0; x < 4; x++) {
      if (nivel == 4) {
        num3 = _ale.nextDouble() * 100;
        num3 = num3.toStringAsFixed(2);
        while (total == num3) {
          num3 = _ale.nextDouble() * 100;
          num3 = num3.toStringAsFixed(2);
        }
      } else {
        num3 = _ale.nextInt(100);
        while (total == num3) {
          num3 = _ale.nextInt(100);
        }
      }
      resultado.add(num3);
    }
    if (nivel == 1) {
      total = num1 + num2;
      operador = '+';
      operacion = 'suma';
    } else if (nivel == 2) {
      total = num1 - num2;
      operador = '-';
      operacion = 'RESTA';
    } else if (nivel == 3) {
      total = num1 * num2;
      operador = '*';
      operacion = 'MULTIPLICACIÓN';
    } else if (nivel == 4) {
      total = num1 / num2;
      total = total.toStringAsFixed(2);
      operador = '÷';
      operacion = 'DIVISIÓN';
      resultado.removeAt(posicion);
      resultado.insert(posicion, total);
      print("total es: $total");
    } else {
      print("niveles alcanzados");
    }
    if (nivel < 4) {
      resultado.removeAt(posicion);
      print(resultado);
      resultado.insert(posicion, total);
      print("posicion es: $posicion");
      print(resultado);
      print("total es: $total");
    }
    puntajeFinal = puntuaje;
    print("OPORTUNIDADES: $oportunidades");
    print("NIVEL: $nivel");
    print("PUNTUAJE: $puntuaje");
    print("mejor Jugador: $mejorJugador");
  }
}
