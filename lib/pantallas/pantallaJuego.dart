import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pantallajuego extends StatefulWidget {
  dynamic nombre = '';
  Pantallajuego({required this.nombre});

  @override
  _PantallajuegoState createState() =>
      _PantallajuegoState(nombreJugador: nombre);
}

class _PantallajuegoState extends State<Pantallajuego> {
  String nombreJugador = '';
  final _ale = Random();
  int num1 = 0;
  int num2 = 0;
  late int num3, posicion;
  int total = 0;
  List<int> resultado = [];
  bool acertado = false;

  @override
  void initState() {
    super.initState();
    _aleatorio();
  }

  void _aleatorio() {
    setState(() {
      num1 = _ale.nextInt(100);
      num2 = _ale.nextInt(100);
      total = num1 + num2;
      posicion = _ale.nextInt(3);
      for (int x = 0; x < 4; x++) {
        num3 = _ale.nextInt(100);
        while (total == num3) {
          num3 = _ale.nextInt(100);
        }
        resultado.add(num3);
      }
      print(resultado);
      resultado.insert(posicion, total);
    });
    print(posicion);
    print(total);
    print(resultado);
  }

  _PantallajuegoState({required this.nombreJugador});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD3D3D3),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Image.asset('assets/imagenes/icono.png'),
            );
          },
        ),
        title: const Center(
          child: Text(
            '¡¡Jugemos!!',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        width: 250,
        backgroundColor: const Color(0xFFCE93D8),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFD3D3D3),
                ),
                child: Text(
                  'Menú',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text(
                'Mejores Puntuaciones',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'mejoresPuntuaciones');
              },
            ),
            const SizedBox(
              height: 250,
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('assets/imagenes/icono.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Calculadora de Niños',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              child: Text(
                'SUMA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Center(
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$num1',
                    style: const TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    '$num2',
                    style: const TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (total == resultado[0]) {
                      acertado == true;
                    } else {
                      acertado == false;
                    }
                    Text(
                      acertado ? 'Felicidades ganaste' : 'Perdiste',
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFF90CAF9)),
                  ),
                  child: Text('${resultado[0]}'),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    if (total == resultado[1]) {
                      acertado == true;
                    } else {
                      acertado == false;
                    }
                    Text(
                      acertado ? 'Felicidades ganaste' : 'Perdiste',
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFF90CAF9)),
                  ),
                  child: Text('${resultado[1]}'),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    if (total == resultado[2]) {
                      acertado == true;
                    } else {
                      acertado == false;
                    }
                    Text(
                      acertado ? 'Felicidades ganaste' : 'Perdiste',
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFF90CAF9)),
                  ),
                  child: Text('${resultado[2]}'),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    if (total == resultado[3]) {
                      acertado == true;
                    } else {
                      acertado == false;
                    }
                    Text(
                      acertado ? 'Felicidades ganaste' : 'Perdiste',
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFF90CAF9)),
                  ),
                  child: Text('${resultado[3]}'),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
