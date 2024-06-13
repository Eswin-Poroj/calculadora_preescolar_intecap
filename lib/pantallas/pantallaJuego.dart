// main.dart
import 'package:app_ninios/pantallas/pantallaMejoresPuntuaciones.dart';
import 'package:app_ninios/pantallas/pantallaResultado.dart';
import 'package:flutter/material.dart';

import 'numero_aleatorio.dart';
import 'pantallaNombre.dart';

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
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
              },
              icon: Image.asset('assets/imagenes/icono.png'),
            );
          },
        ),
        title: Center(
          child: Text(
            '¡¡Jugemos $nombreFinal!!',
            style: const TextStyle(
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
                _advertenciaSalida(context);
              },
            ),
            ListTile(
              title: const Text(
                'Mejores Puntuaciones',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                _advertenciaSalidaMejoresPuntuaciones(context);
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
                numeroAleatorio.operacion,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                    style: const TextStyle(
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
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PantallaGanador(
                                                    nombre: nombreJugador,
                                                    puntaje: numeroAleatorio
                                                        .puntajeFinal),
                                          ),
                                        )
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
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PantallaGanador(
                                                    nombre: nombreJugador,
                                                    puntaje: numeroAleatorio
                                                        .puntajeFinal),
                                          ),
                                        )
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
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PantallaGanador(
                                                    nombre: nombreJugador,
                                                    puntaje: numeroAleatorio
                                                        .puntajeFinal),
                                          ),
                                        )
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
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PantallaGanador(
                                                    nombre: nombreJugador,
                                                    puntaje: numeroAleatorio
                                                        .puntajeFinal),
                                          ),
                                        )
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
          title: const Text('¡Siiiii!!!'),
          content: Text('¡Eres grande $nombreJugador, acertaste!'),
          actions: <Widget>[
            TextButton(
              child: const Text('¡Vamos por más!'),
              onPressed: () {
                Navigator.pushNamed(context, 'juego');
              },
            ),
          ],
        );
      },
    );
  }

  dynamic nuevoNombre;
  void _resultadoIncorrecto(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Lastima :( !'),
          content: Text('¡Vamos $nombreJugador intentemos de nuevo!'),
          actions: <Widget>[
            TextButton(
              child: const Text('Nueva Partida'),
              onPressed: () {
                nuevoNombre = nombreJugador;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Pantallajuego(nombre: nuevoNombre)));
              },
            ),
          ],
        );
      },
    );
  }

  void _advertenciaSalida(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Advertencia!'),
          content: const Text(
              '¡Estas intentando salir del juego y no sé te guardará tu puntuaje obtenido!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              child: const Text('Salir'),
              onPressed: () {
                nuevoNombre = nombreJugador;
                puntuaje = 0;
                nivel = 1;
                oportunidades = 0;
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
              },
            ),
          ],
        );
      },
    );
  }

  void _advertenciaSalidaMejoresPuntuaciones(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Advertencia!'),
          content: const Text(
              '¡Estas intentando salir del juego y no sé te guardará tu puntuaje obtenido!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              child: const Text('Salir'),
              onPressed: () {
                nuevoNombre = nombreJugador;
                puntuaje = 0;
                nivel = 1;
                oportunidades = 0;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pantallamejorespuntuaciones()));
              },
            ),
          ],
        );
      },
    );
  }
}
