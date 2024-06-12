// main.dart
import 'package:flutter/material.dart';

import 'numero_aleatorio.dart';

class Pantallajuego extends StatefulWidget {
  dynamic nombre = '';
  Pantallajuego({required this.nombre});

  @override
  _PantallajuegoState createState() =>
      _PantallajuegoState(nombreJugador: nombre);
}

class _PantallajuegoState extends State<Pantallajuego> {
  String nombreJugador = '';
  bool acertado = false;
  NumeroAleatorio numeroAleatorio = NumeroAleatorio();

  _PantallajuegoState({required this.nombreJugador});
  @override
  void initState() {
    super.initState();
    numeroAleatorio.aleatorio();
  }

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
                    '${numeroAleatorio.num1}',
                    style: const TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    '${numeroAleatorio.operador}',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    '${numeroAleatorio.num2}',
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
                    if (numeroAleatorio.total == numeroAleatorio.resultado[0]) {
                      _resultadoCorrecto(context);
                      oportunidades++;
                      puntuaje += 10;
                      oportunidades == 4
                          ? nivel++
                          : oportunidades == 8
                              ? nivel++
                              : oportunidades == 12
                                  ? nivel++
                                  : oportunidades == 16
                                      ? Navigator.pushNamed(
                                          context, 'mejoresPuntuaciones')
                                      : print("ERROR");
                    } else {
                      _resultadoIncorrecto(context);
                      oportunidades = 0;
                      nivel = 1;
                      puntuaje = 0;
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF90CAF9)),
                  ),
                  child: Text('${numeroAleatorio.resultado[0]}'),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    if (numeroAleatorio.total == numeroAleatorio.resultado[1]) {
                      _resultadoCorrecto(context);
                      oportunidades++;
                      puntuaje += 10;
                      oportunidades == 4
                          ? nivel++
                          : oportunidades == 8
                              ? nivel++
                              : oportunidades == 12
                                  ? nivel++
                                  : oportunidades == 16
                                      ? Navigator.pushNamed(
                                          context, 'mejoresPuntuaciones')
                                      : print("ERROR");
                    } else {
                      _resultadoIncorrecto(context);
                      oportunidades = 0;
                      nivel = 1;
                      puntuaje = 0;
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF90CAF9)),
                  ),
                  child: Text('${numeroAleatorio.resultado[1]}'),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    if (numeroAleatorio.total == numeroAleatorio.resultado[2]) {
                      _resultadoCorrecto(context);
                      oportunidades++;
                      puntuaje += 10;
                      oportunidades == 4
                          ? nivel++
                          : oportunidades == 8
                              ? nivel++
                              : oportunidades == 12
                                  ? nivel++
                                  : oportunidades == 16
                                      ? Navigator.pushNamed(
                                          context, 'mejoresPuntuaciones')
                                      : print("ERROR");
                    } else {
                      _resultadoIncorrecto(context);
                      oportunidades = 0;
                      nivel = 1;
                      puntuaje = 0;
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF90CAF9)),
                  ),
                  child: Text('${numeroAleatorio.resultado[2]}'),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    if (numeroAleatorio.total == numeroAleatorio.resultado[3]) {
                      _resultadoCorrecto(context);
                      oportunidades++;
                      puntuaje += 10;
                      oportunidades == 4
                          ? nivel++
                          : oportunidades == 8
                              ? nivel++
                              : oportunidades == 12
                                  ? nivel++
                                  : oportunidades == 16
                                      ? Navigator.pushNamed(
                                          context, 'mejoresPuntuaciones')
                                      : print("ERROR");
                    } else {
                      _resultadoIncorrecto(context);
                      oportunidades = 0;
                      nivel = 1;
                      puntuaje = 0;
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF90CAF9)),
                  ),
                  child: Text('${numeroAleatorio.resultado[3]}'),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }

  void _resultadoCorrecto(BuildContext context) {
    // Llama a la función showDialog para mostrar un cuadro de diálogo.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // Título del diálogo.
          title: const Text('Confirmación'),
          // Texto del diálogo.
          content: const Text('¡Felicidades acerto!'),
          // Lista de acciones (botones) para el diálogo.
          actions: <Widget>[
            // Otro botón de texto.
            TextButton(
              // Texto del botón.
              child: const Text('Continuar'),
              // Función que se ejecuta cuando se presiona el botón.
              onPressed: () {
                // Avanzar a la siguiente pantalla.
                Navigator.pushNamed(context, 'juego');
              },
            ),
          ],
        );
      },
    );
  }

  void _resultadoIncorrecto(BuildContext context) {
    // Llama a la función showDialog para mostrar un cuadro de diálogo.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // Título del diálogo.
          title: const Text('Confirmación'),
          // Texto del diálogo.
          content: const Text('Intente de nuevo, resultado incorrecto!'),
          // Lista de acciones (botones) para el diálogo.
          actions: <Widget>[
            // Botón de texto.
            TextButton(
              // Texto del botón.
              child: const Text('Reintentar'),
              // Función que se ejecuta cuando se presiona el botón.
              onPressed: () {
                // Cierra el cuadro de diálogo.
                Navigator.of(context).pop();
              },
            ),
            // Otro botón de texto.
            TextButton(
              // Texto del botón.
              child: const Text('Continuar'),
              // Función que se ejecuta cuando se presiona el botón.
              onPressed: () {
                // Avanzar a la siguiente pantalla.
                Navigator.pushNamed(context, 'juego');
              },
            ),
          ],
        );
      },
    );
  }
}
